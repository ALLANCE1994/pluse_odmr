import uhd
import numpy as np
import time
import threading
from dataclasses import dataclass, field
from typing import Optional, Tuple, List
from enum import IntEnum


class SequenceType(IntEnum):
    NV_ESR = 0x00
    RABI = 0x01
    T1 = 0x10
    T2_HAHN_ECHO = 0x11
    XY8_N = 0x100
    CORRELATION_SPECTROSCOPY = 0x101


@dataclass
class B210TxConfig:
    freq_hz: float = 2.87e9
    tx_gain_db: float = 70.0
    sample_rate_hz: float = 1e6
    master_clock_rate_hz: float = 20e6
    clock_source: str = "external"
    time_source: str = "external"
    tx_antenna: str = "TX/RX"
    num_channels: int = 1


@dataclass
class SweepParams:
    start_freq_hz: float = 2.80e9
    stop_freq_hz: float = 2.95e9
    step_freq_hz: float = 1.0e6
    dwell_time_s: float = 0.05
    repetitions: int = 1
    freq_list_hz: List[float] = field(default_factory=list)


class B210Controller:
    def __init__(self, config: B210TxConfig = None):
        self._config = config or B210TxConfig()
        self._usrp: Optional[uhd.usrp.MultiUSRP] = None
        self._rx_streamer = None
        self._tx_streamer = None
        self._tx_thread: Optional[threading.Thread] = None
        self._tx_running = threading.Event()
        self._lock = threading.Lock()
        self._current_freq_hz = self._config.freq_hz
        self._sweep_results: List[Tuple[float, float]] = []

    def connect(self) -> bool:
        try:
            self._usrp = uhd.usrp.MultiUSRP()
            self._configure_device()
            self._verify_clock_lock()
            return True
        except RuntimeError as e:
            print(f"[B210] Connection failed: {e}")
            return False

    def _configure_device(self):
        cfg = self._config
        self._usrp.set_master_clock_rate(cfg.master_clock_rate_hz)
        self._usrp.set_tx_rate(cfg.sample_rate_hz)
        self._usrp.set_rx_rate(cfg.sample_rate_hz)

        self._usrp.set_clock_source(cfg.clock_source)
        self._usrp.set_time_source(cfg.time_source)

        self._usrp.set_time_now(uhd.types.TimeSpec(0.0))

        tune_req = uhd.types.TuneRequest(cfg.freq_hz)
        self._usrp.set_tx_freq(tune_req, 0)
        self._usrp.set_tx_gain(cfg.tx_gain_db, 0)
        self._usrp.set_tx_antenna(cfg.tx_antenna, 0)

        self._current_freq_hz = cfg.freq_hz

        print(f"[B210] Configured: {cfg.freq_hz/1e9:.6f} GHz @ {cfg.tx_gain_db} dB "
              f"| Clock: {cfg.clock_source} | Time: {cfg.time_source}")

    def _verify_clock_lock(self):
        for i in range(30):
            sensors = self._usrp.get_mboard_sensors(0)
            if "ref_locked" in sensors:
                locked = sensors["ref_locked"].to_bool()
                print(f"[B210] REF lock: {locked} (attempt {i+1}/30)")
                if locked:
                    return True
            time.sleep(0.1)
        print("[B210] WARNING: REF not locked after 3s - check 10MHz cable from ZYNQ J4 Pin1")

    def set_frequency(self, freq_hz: float):
        with self._lock:
            self._usrp.set_tx_freq(uhd.types.TuneRequest(freq_hz), 0)
            self._current_freq_hz = freq_hz

    def set_gain(self, gain_db: float):
        with self._lock:
            self._usrp.set_tx_gain(gain_db, 0)

    def get_frequency(self) -> float:
        return self._current_freq_hz

    def get_gain(self) -> float:
        return self._usrp.get_tx_gain(0)

    def tx_cw(self, duration_s: float = None):
        self._tx_running.clear()

        stream_args = uhd.usrp.StreamArgs("fc32", "sc16")
        stream_args.channels = [0]
        tx_streamer = self._usrp.get_tx_stream(stream_args)

        sample_rate = self._usrp.get_tx_rate()
        if duration_s is not None:
            num_samps = int(sample_rate * duration_s)
            samples = np.ones(num_samps, dtype=np.complex64) * 0.3
            metadata = uhd.types.TXMetadata()
            metadata.has_time_spec = True
            metadata.time_spec = self._usrp.get_time_now() + uhd.types.TimeSpec(0.2)
            metadata.end_of_burst = True
            tx_streamer.send(samples, metadata)
        else:
            burst_size = int(sample_rate * 0.01)
            samples = np.ones(burst_size, dtype=np.complex64) * 0.3
            metadata = uhd.types.TXMetadata()
            metadata.has_time_spec = False
            metadata.start_of_burst = True

            self._tx_running.set()
            self._tx_thread = threading.Thread(target=self._cw_loop, args=(tx_streamer, samples), daemon=True)
            self._tx_thread.start()

    def _cw_loop(self, tx_streamer, samples):
        metadata = uhd.types.TXMetadata()
        metadata.has_time_spec = False
        while self._tx_running.is_set():
            metadata.end_of_burst = False
            tx_streamer.send(samples, metadata, timeout=1.0)

        metadata.end_of_burst = True
        tx_streamer.send(np.zeros(1024, dtype=np.complex64), metadata, timeout=1.0)

    def stop_tx(self):
        self._tx_running.clear()
        if self._tx_thread and self._tx_thread.is_alive():
            self._tx_thread.join(timeout=2.0)

    def tx_pulsed(self, pulse_width_s: float, pulse_period_s: float, num_pulses: int = 1):
        self.stop_tx()

        sample_rate = self._usrp.get_tx_rate()
        on_samples = max(1, int(sample_rate * pulse_width_s))
        off_samples = max(1, int(sample_rate * (pulse_period_s - pulse_width_s)))

        on_burst = np.ones(on_samples, dtype=np.complex64) * 0.3
        off_burst = np.zeros(off_samples, dtype=np.complex64)

        total_burst = np.tile(np.concatenate([on_burst, off_burst]), num_pulses)

        stream_args = uhd.usrp.StreamArgs("fc32", "sc16")
        stream_args.channels = [0]
        tx_streamer = self._usrp.get_tx_stream(stream_args)

        metadata = uhd.types.TXMetadata()
        metadata.has_time_spec = True
        metadata.time_spec = self._usrp.get_time_now() + uhd.types.TimeSpec(0.2)
        metadata.end_of_burst = True

        tx_streamer.send(total_burst, metadata)
        print(f"[B210] Pulsed TX: {pulse_width_s*1e6:.1f}us ON, "
              f"{(pulse_period_s-pulse_width_s)*1e6:.1f}us OFF, x{num_pulses}")

    def run_frequency_sweep(self, sweep: SweepParams) -> List[Tuple[float, float]]:
        if not sweep.freq_list_hz:
            num_steps = int((sweep.stop_freq_hz - sweep.start_freq_hz) / sweep.step_freq_hz) + 1
            freq_list = [sweep.start_freq_hz + i * sweep.step_freq_hz for i in range(num_steps)]
        else:
            freq_list = sweep.freq_list_hz

        results = []
        print(f"[B210] Starting sweep: {freq_list[0]/1e6:.3f} ~ {freq_list[-1]/1e6:.3f} MHz "
              f"({len(freq_list)} points)")

        total = len(freq_list) * sweep.repetitions
        idx = 0
        for rep in range(sweep.repetitions):
            for freq in freq_list:
                self.set_frequency(freq)
                time.sleep(sweep.dwell_time_s)
                self._last_sweep_freq = freq
                idx += 1

        print(f"[B210] Sweep complete: {total} frequency hops")
        return results

    def _calc_esr_field(self, freq_zero_hz: float) -> float:
        return (2.87e9 - freq_zero_hz) / 2.8

    def set_nv_esr_mode(self, center_freq_hz: float = 2.87e9, sweep_range_hz: float = 50e6, step_hz: float = 1e6, dwell_s: float = 0.1):
        self.set_frequency(center_freq_hz)
        self.set_gain(self._config.tx_gain_db)
        self.tx_cw()
        self._sweep = SweepParams(
            start_freq_hz=center_freq_hz - sweep_range_hz / 2,
            stop_freq_hz=center_freq_hz + sweep_range_hz / 2,
            step_freq_hz=step_hz,
            dwell_time_s=dwell_s,
            repetitions=1,
        )

    def set_rabi_mode(self, freq_hz: float = 2.87e9, pulse_width_range: Tuple[float, float] = (10e-9, 100e-9), n_steps: int = 20):
        self.set_frequency(freq_hz)
        self.set_gain(self._config.tx_gain_db)
        self._rabi_freq = freq_hz
        self._rabi_widths = np.linspace(pulse_width_range[0], pulse_width_range[1], n_steps)

    def set_t1_mode(self, freq_hz: float = 2.87e9, tau_range: Tuple[float, float] = (1e-6, 10e-3), n_steps: int = 50):
        self.set_frequency(freq_hz)
        self._t1_freq = freq_hz
        self._t1_taus = np.logspace(np.log10(tau_range[0]), np.log10(tau_range[1]), n_steps)

    def set_t2_hahn_mode(self, freq_hz: float = 2.87e9, tau_range: Tuple[float, float] = (50e-9, 10e-6), n_steps: int = 50):
        self.set_frequency(freq_hz)
        self._t2_freq = freq_hz
        self._t2_taus = np.linspace(tau_range[0], tau_range[1], n_steps)

    def set_xy8_n_mode(self, freq_hz: float = 2.87e9, n_values: List[int] = None):
        self.set_frequency(freq_hz)
        self._xy8_freq = freq_hz
        self._xy8_n_values = n_values or [1, 2, 4, 8, 16, 32, 64]

    def set_correlation_mode(self, freq_hz: float = 2.87e9, t_corr_range: Tuple[float, float] = (0, 350e-6), n_steps: int = 100):
        self.set_frequency(freq_hz)
        self._corr_freq = freq_hz
        self._corr_taus = np.linspace(t_corr_range[0], t_corr_range[1], n_steps)

    def get_device_info(self) -> dict:
        if self._usrp is None:
            return {"status": "disconnected"}

        sensors = self._usrp.get_mboard_sensors(0)
        return {
            "status": "connected",
            "mboard_name": self._usrp.get_mboard_name(),
            "tx_freq_hz": self._usrp.get_tx_freq(0),
            "tx_gain_db": self._usrp.get_tx_gain(0),
            "tx_rate_hz": self._usrp.get_tx_rate(),
            "master_clock_rate_hz": self._usrp.get_master_clock_rate(),
            "clock_source": self._usrp.get_clock_source(0),
            "time_source": self._usrp.get_time_source(0),
            "ref_locked": sensors.get("ref_locked", "N/A"),
            "gps_locked": sensors.get("gps_locked", "N/A"),
        }

    def close(self):
        self.stop_tx()

        if self._usrp:
            del self._usrp
            self._usrp = None
        print("[B210] Device closed")


if __name__ == "__main__":
    config = B210TxConfig(freq_hz=2.87e9, tx_gain_db=70.0)
    b210 = B210Controller(config)

    if b210.connect():
        info = b210.get_device_info()
        print(f"Device: {info['mboard_name']}")
        print(f"TX: {info['tx_freq_hz']/1e9:.6f} GHz @ {info['tx_gain_db']} dB")
        print(f"REF locked: {info['ref_locked']}")

        b210.tx_cw(duration_s=1.0)
        time.sleep(1.5)
        b210.stop_tx()

        b210.close()
    else:
        print("ERROR: Cannot connect to B210mini")
