import time
import numpy as np
from pynq import Overlay, MMIO
from remote_b210 import RemoteB210


class RegisterMap:
    BASE = 0x43C00000

    CTRL_REG = 0x00
    STAT_REG = 0x04
    CLK_CFG_REG = 0x10
    MMCM_CFG_REG = 0x14
    MW_FREQ_REG = 0x18
    MW_PHASE_REG = 0x1C
    PULSE0_CFG_REG = 0x20
    PULSE1_CFG_REG = 0x24
    PULSE2_CFG_REG = 0x28
    PULSE3_CFG_REG = 0x2C
    PULSE_SEQ_REG = 0x30
    SEQ_SEL_REG = 0x34
    SEQ_PARAM0_REG = 0x38
    SEQ_PARAM1_REG = 0x3C
    SEQ_PARAM2_REG = 0x40
    ADC_CFG_REG = 0x44
    ADC_STAT_REG = 0x48
    DMA_CFG_REG = 0x60
    DMA_STAT_REG = 0x64

    CTRL_SYS_EN = 0
    CTRL_PULSE_EN = 1
    CTRL_ADC_EN = 2
    CTRL_DMA_EN = 3
    CTRL_SEQ_START = 4

    STAT_READY = 0
    STAT_ADC_OVF = 1
    STAT_FIFO_EMPTY = 2
    STAT_FIFO_FULL = 3
    STAT_SEQ_DONE = 4

    SEQ_NV_ESR = 0x00
    SEQ_RABI = 0x01
    SEQ_T1 = 0x10
    SEQ_T2 = 0x11
    SEQ_XY8_N = 0x100
    SEQ_CORRELATION = 0x101


class PLRegDriver:
    def __init__(self, base_addr: int = RegisterMap.BASE):
        self.mmio = MMIO(base_addr, 0x10000)
        self._base = base_addr

    def _read(self, offset: int) -> int:
        addr = offset
        raw = self.mmio.read(addr)
        if isinstance(raw, bytearray):
            raw = int.from_bytes(raw, byteorder='little')
        return raw

    def _write(self, offset: int, value: int):
        self.mmio.write(offset, value)

    def read_ctrl(self) -> int:
        return self._read(RegisterMap.CTRL_REG)

    def write_ctrl(self, sys_en: bool = False, pulse_en: bool = False, adc_en: bool = False, dma_en: bool = False, seq_start: bool = False):
        val = 0
        if sys_en:
            val |= (1 << RegisterMap.CTRL_SYS_EN)
        if pulse_en:
            val |= (1 << RegisterMap.CTRL_PULSE_EN)
        if adc_en:
            val |= (1 << RegisterMap.CTRL_ADC_EN)
        if dma_en:
            val |= (1 << RegisterMap.CTRL_DMA_EN)
        if seq_start:
            val |= (1 << RegisterMap.CTRL_SEQ_START)
        self._write(RegisterMap.CTRL_REG, val)

    def read_stat(self) -> int:
        return self._read(RegisterMap.STAT_REG)

    def is_ready(self) -> bool:
        return bool(self.read_stat() & (1 << RegisterMap.STAT_READY))

    def is_seq_done(self) -> bool:
        return bool(self.read_stat() & (1 << RegisterMap.STAT_SEQ_DONE))

    def set_mw_freq_khz(self, freq_khz: int):
        self._write(RegisterMap.MW_FREQ_REG, freq_khz)

    def set_pulse(self, index: int, width_ns: int, delay_ns: int = 0):
        offsets = [RegisterMap.PULSE0_CFG_REG, RegisterMap.PULSE1_CFG_REG, RegisterMap.PULSE2_CFG_REG, RegisterMap.PULSE3_CFG_REG]
        val = ((delay_ns & 0xFFFF) << 16) | (width_ns & 0xFFFF)
        self._write(offsets[index], val)

    def set_pulse_aom(self, width_ns: int = 5000, delay_ns: int = 0):
        self.set_pulse(0, width_ns, delay_ns)

    def set_pulse_mw(self, width_ns: int = 40, delay_ns: int = 20):
        self.set_pulse(1, width_ns, delay_ns)

    def set_pulse_trigger(self, width_ns: int = 5000, delay_ns: int = 0):
        self.set_pulse(2, width_ns, delay_ns)

    def set_pulse_sync(self, width_ns: int = 5000, delay_ns: int = 0):
        self.set_pulse(3, width_ns, delay_ns)

    def set_pulse_mask(self, mask: int = 0x0F):
        self._write(RegisterMap.PULSE_SEQ_REG, mask & 0x0F)

    def set_sequence_type(self, seq_type: int):
        self._write(RegisterMap.SEQ_SEL_REG, seq_type)

    def set_adc_config(self, sample_points: int = 1024, clock_div: int = 0):
        val = ((clock_div & 0xFF) << 16) | (sample_points & 0xFFFF)
        self._write(RegisterMap.ADC_CFG_REG, val)

    def get_adc_sample_count(self) -> int:
        return self._read(RegisterMap.ADC_STAT_REG) & 0xFFFF

    def trigger_sequence(self):
        current = self.read_ctrl()
        self._write(RegisterMap.CTRL_REG, current | (1 << RegisterMap.CTRL_SEQ_START))
        self._write(RegisterMap.CTRL_REG, current)

    def enable_system(self):
        self._write(RegisterMap.CTRL_REG, 0x1F)

    def disable_system(self):
        self._write(RegisterMap.CTRL_REG, 0x00)


class ODMRExperiment:
    def __init__(self, bitstream_path: str = "pulse_odmr.bit", b210_host: str = "192.168.1.100", b210_port: int = 5000):
        self._bitstream_path = bitstream_path
        self._overlay: Overlay = None
        self._pl: PLRegDriver = None
        self._b210: RemoteB210 = None

        self._b210_host = b210_host
        self._b210_port = b210_port

        self._current_freq_hz = 2.87e9
        self._current_seq_type = RegisterMap.SEQ_NV_ESR

    @property
    def pl(self) -> PLRegDriver:
        return self._pl

    @property
    def b210(self) -> RemoteB210:
        return self._b210

    def initialize(self, wait_b210: bool = True):
        print("[ODMR] Loading overlay...")
        self._overlay = Overlay(self._bitstream_path)
        print(f"[ODMR] Overlay loaded: {self._bitstream_path}")

        self._pl = PLRegDriver()

        print("[ODMR] Connecting to B210 server...")
        self._b210 = RemoteB210(server_host=self._b210_host, server_port=self._b210_port)

        if wait_b210:
            if not self._b210.wait_for_server(max_wait_s=30.0):
                print("[ODMR] WARNING: B210 server not reachable. Microwave control unavailable.")
        else:
            if not self._b210.health_check():
                print("[ODMR] WARNING: B210 server not reachable.")

        self._pl.enable_system()
        time.sleep(0.1)

        if self._pl.is_ready():
            print("[ODMR] PL system ready")
        else:
            print("[ODMR] WARNING: PL system not ready - check MMCM lock")

        self._pl.set_adc_config(sample_points=1024)
        self._pl.set_pulse_mask(0x0F)

        print("[ODMR] Initialization complete")
        return self

    def configure_pulses(self, aom_width_ns: int = 5000, mw_width_ns: int = 40, trigger_width_ns: int = 5000, sync_width_ns: int = 5000):
        self._pl.set_pulse_aom(width_ns=aom_width_ns)
        self._pl.set_pulse_mw(width_ns=mw_width_ns, delay_ns=20)
        self._pl.set_pulse_trigger(width_ns=trigger_width_ns)
        self._pl.set_pulse_sync(width_ns=sync_width_ns)

    def set_frequency(self, freq_hz: float):
        self._current_freq_hz = freq_hz
        self._b210.set_frequency(freq_hz)
        freq_khz = int(freq_hz / 1000)
        self._pl.set_mw_freq_khz(freq_khz)

    def run_nv_esr(self, start_freq_hz: float = 2.80e9, stop_freq_hz: float = 2.95e9, step_freq_hz: float = 1e6, points_per_freq: int = 10) -> dict:
        self._current_seq_type = RegisterMap.SEQ_NV_ESR
        self._pl.set_sequence_type(RegisterMap.SEQ_NV_ESR)
        self.configure_pulses()

        freq_list = np.arange(start_freq_hz, stop_freq_hz + step_freq_hz / 2, step_freq_hz)
        n_freqs = len(freq_list)

        frequencies_hz = []
        fluorescence_mean = []
        fluorescence_std = []

        print(f"[ODMR] NV-ESR: {start_freq_hz/1e6:.1f} ~ {stop_freq_hz/1e6:.1f} MHz, {n_freqs} points, {points_per_freq} reps")
        print(f"[ODMR] Estimated time: {n_freqs * 0.15:.0f}s (at 0.15s per point)")

        for i, freq in enumerate(freq_list):
            self.set_frequency(freq)
            time.sleep(0.02)

            fluo_samples = []
            for _ in range(points_per_freq):
                self._pl.trigger_sequence()
                time.sleep(0.005)
                sample_count = self._pl.get_adc_sample_count()
                fluo_samples.append(sample_count)

            frequencies_hz.append(freq)
            fluorescence_mean.append(np.mean(fluo_samples))
            fluorescence_std.append(np.std(fluo_samples))

            if (i + 1) % 10 == 0 or i == n_freqs - 1:
                print(f"[ODMR] Progress: {i+1}/{n_freqs} ({100*(i+1)/n_freqs:.1f}%)")

        self._b210.tx_stop()

        return {
            "sequence": "NV-ESR",
            "frequencies_hz": np.array(frequencies_hz),
            "fluorescence_mean": np.array(fluorescence_mean),
            "fluorescence_std": np.array(fluorescence_std),
            "field_estimate_g": self._estimate_field(np.array(frequencies_hz), np.array(fluorescence_mean)),
        }

    def run_rabi(self, freq_hz: float = 2.87e9, pw_min_ns: int = 10, pw_max_ns: int = 100, n_steps: int = 20, points_per_width: int = 20) -> dict:
        self._current_seq_type = RegisterMap.SEQ_RABI
        self._pl.set_sequence_type(RegisterMap.SEQ_RABI)
        self.set_frequency(freq_hz)
        self._b210.tx_start()

        widths_ns = np.linspace(pw_min_ns, pw_max_ns, n_steps, dtype=np.int32)

        pulse_widths_ns = []
        contrast = []

        print(f"[ODMR] Rabi: {freq_hz/1e9:.3f} GHz, MW pulse {pw_min_ns}~{pw_max_ns}ns, {n_steps} steps")

        for i, w in enumerate(widths_ns):
            self._pl.set_pulse_mw(width_ns=int(w), delay_ns=20)
            time.sleep(0.01)

            fluo_samples = []
            for _ in range(points_per_width):
                self._pl.trigger_sequence()
                time.sleep(0.003)
                fluo_samples.append(self._pl.get_adc_sample_count())

            pulse_widths_ns.append(w)
            contrast.append(np.mean(fluo_samples))

            if (i + 1) % 5 == 0:
                print(f"[ODMR] Rabi: {i+1}/{n_steps} pw={w}ns")

        self._b210.tx_stop()

        return {
            "sequence": "Rabi",
            "freq_hz": freq_hz,
            "pulse_widths_ns": np.array(pulse_widths_ns),
            "fluorescence": np.array(contrast),
            "pi_pulse_estimate_ns": self._estimate_pi_pulse(widths_ns, np.array(contrast)),
        }

    def run_t1(self, freq_hz: float = 2.87e9, tau_min_s: float = 1e-6, tau_max_s: float = 10e-3, n_steps: int = 50, points_per_tau: int = 5) -> dict:
        self._current_seq_type = RegisterMap.SEQ_T1
        self._pl.set_sequence_type(RegisterMap.SEQ_T1)
        self.set_frequency(freq_hz)

        taus_s = np.logspace(np.log10(tau_min_s), np.log10(tau_max_s), n_steps)

        tau_values_s = []
        fluorescence = []

        print(f"[ODMR] T1: {freq_hz/1e9:.3f} GHz, tau {tau_min_s*1e6:.1f}us ~ {tau_max_s*1e3:.1f}ms")

        for i, tau in enumerate(taus_s):
            tau_ns = int(tau * 1e9)
            self._pl.set_pulse_aom(width_ns=5000)
            time.sleep(max(tau, 0.001))

            fluo_samples = []
            for _ in range(points_per_tau):
                self._pl.trigger_sequence()
                time.sleep(0.003)
                fluo_samples.append(self._pl.get_adc_sample_count())

            tau_values_s.append(tau)
            fluorescence.append(np.mean(fluo_samples))

            if (i + 1) % 10 == 0:
                print(f"[ODMR] T1: {i+1}/{n_steps} tau={tau*1e6:.1f}us")

        return {
            "sequence": "T1",
            "freq_hz": freq_hz,
            "tau_values_s": np.array(tau_values_s),
            "fluorescence": np.array(fluorescence),
            "t1_estimate_s": self._estimate_t1(taus_s, np.array(fluorescence)),
        }

    def run_t2_hahn(self, freq_hz: float = 2.87e9, tau_min_s: float = 50e-9, tau_max_s: float = 10e-6, n_steps: int = 50, points_per_tau: int = 20) -> dict:
        self._current_seq_type = RegisterMap.SEQ_T2
        self._pl.set_sequence_type(RegisterMap.SEQ_T2)
        self.set_frequency(freq_hz)

        taus_s = np.linspace(tau_min_s, tau_max_s, n_steps)

        tau_values_s = []
        fluorescence = []

        print(f"[ODMR] T2 Hahn: {freq_hz/1e9:.3f} GHz, tau {tau_min_s*1e9:.0f}ns ~ {tau_max_s*1e6:.1f}us")

        for i, tau in enumerate(taus_s):
            tau_ns = int(tau * 1e9)
            time.sleep(0.002)

            fluo_samples = []
            for _ in range(points_per_tau):
                self._pl.trigger_sequence()
                time.sleep(0.003)
                fluo_samples.append(self._pl.get_adc_sample_count())

            tau_values_s.append(tau)
            fluorescence.append(np.mean(fluo_samples))

            if (i + 1) % 10 == 0:
                print(f"[ODMR] T2: {i+1}/{n_steps} tau={tau*1e9:.0f}ns")

        return {
            "sequence": "T2_Hahn",
            "freq_hz": freq_hz,
            "tau_values_s": np.array(tau_values_s),
            "fluorescence": np.array(fluorescence),
            "t2_estimate_s": self._estimate_t2(taus_s, np.array(fluorescence)),
        }

    def run_xy8_n(self, freq_hz: float = 2.87e9, tau_s: float = 378e-9, n_values: list = None, points_per_n: int = 20) -> dict:
        self._current_seq_type = RegisterMap.SEQ_XY8_N
        self._pl.set_sequence_type(RegisterMap.SEQ_XY8_N)
        self.set_frequency(freq_hz)

        n_list = n_values or [1, 2, 4, 8, 16, 32, 64]
        tau_ns = int(tau_s * 1e9)
        self._pl._write(RegisterMap.SEQ_PARAM0_REG, 1)
        self._pl._write(RegisterMap.SEQ_PARAM1_REG, tau_ns)

        n_vals = []
        fluorescence = []

        print(f"[ODMR] XY8-N: {freq_hz/1e9:.3f} GHz, tau={tau_ns}ns, N={n_list}")

        for n in n_list:
            self._pl._write(RegisterMap.SEQ_PARAM0_REG, n)
            time.sleep(0.01)

            fluo_samples = []
            for _ in range(points_per_n):
                self._pl.trigger_sequence()
                time.sleep(0.005)
                fluo_samples.append(self._pl.get_adc_sample_count())

            n_vals.append(n)
            fluorescence.append(np.mean(fluo_samples))
            print(f"[ODMR] XY8-{n}: fluorescence={fluorescence[-1]:.1f}")

        return {
            "sequence": "XY8-N",
            "freq_hz": freq_hz,
            "tau_s": tau_s,
            "n_values": np.array(n_vals),
            "fluorescence": np.array(fluorescence),
        }

    def save_results(self, results: dict, filename: str):
        save_data = {}
        for key, value in results.items():
            if isinstance(value, np.ndarray):
                save_data[key] = value.tolist()
            elif isinstance(value, (int, float, str)):
                save_data[key] = value

        save_data["timestamp"] = time.strftime("%Y-%m-%d %H:%M:%S")

        import json
        with open(filename, 'w') as f:
            json.dump(save_data, f, indent=2)

        npz_name = filename.replace('.json', '.npz')
        np_arrays = {k: v for k, v in results.items() if isinstance(v, np.ndarray)}
        if np_arrays:
            np.savez(npz_name, **np_arrays)

        print(f"[ODMR] Results saved: {filename}, {npz_name}")

    def shutdown(self):
        if self._b210:
            self._b210.tx_stop()
        if self._pl:
            self._pl.disable_system()
        if self._overlay:
            self._overlay.free()
        print("[ODMR] Shutdown complete")

    @staticmethod
    def _estimate_field(frequencies_hz: np.ndarray, fluorescence: np.ndarray) -> float:
        if len(fluorescence) < 3:
            return 0.0

        min_idx = np.argmin(fluorescence)
        center_freq = frequencies_hz[min_idx]
        d_zero = 2.87e9
        return (d_zero - center_freq) / 2.8

    @staticmethod
    def _estimate_pi_pulse(widths_ns: np.ndarray, fluorescence: np.ndarray) -> float:
        if len(fluorescence) < 3:
            return 40.0

        from scipy.optimize import curve_fit

        try:
            def damped_cos(x, a, freq, phi, offset, decay):
                return a * np.exp(-x / decay) * np.cos(2 * np.pi * freq * x + phi) + offset

            x_norm = widths_ns / 1e9
            popt, _ = curve_fit(damped_cos, x_norm, fluorescence,
                                p0=[100, 10e6, 0, np.mean(fluorescence), 200e-9],
                                maxfev=10000)
            period = 1.0 / popt[1]
            pi_pulse = period / 2
            return pi_pulse * 1e9
        except Exception:
            min_idx = np.argmin(fluorescence)
            return float(widths_ns[min_idx])

    @staticmethod
    def _estimate_t1(taus_s: np.ndarray, fluorescence: np.ndarray) -> float:
        if len(fluorescence) < 3:
            return 1e-3

        from scipy.optimize import curve_fit

        try:
            def exp_decay(t, a, t1, offset):
                return a * np.exp(-t / t1) + offset

            popt, _ = curve_fit(exp_decay, taus_s, fluorescence,
                                p0=[np.max(fluorescence) - np.min(fluorescence), 1e-3, np.min(fluorescence)],
                                maxfev=10000)
            return popt[1]
        except Exception:
            return 1e-3

    @staticmethod
    def _estimate_t2(taus_s: np.ndarray, fluorescence: np.ndarray) -> float:
        if len(fluorescence) < 3:
            return 1e-6

        from scipy.optimize import curve_fit

        try:
            def exp_decay(t, a, t2, offset):
                return a * np.exp(-t / t2) + offset

            popt, _ = curve_fit(exp_decay, taus_s, fluorescence,
                                p0=[np.max(fluorescence) - np.min(fluorescence), 2e-6, np.min(fluorescence)],
                                maxfev=10000)
            return popt[1]
        except Exception:
            return 1e-6


def main():
    import argparse
    parser = argparse.ArgumentParser(description="ODMR Experiment Orchestrator")
    parser.add_argument("--bit", default="pulse_odmr.bit", help="Bitstream path")
    parser.add_argument("--b210-host", default="192.168.1.100", help="B210 server IP")
    parser.add_argument("--b210-port", type=int, default=5000, help="B210 server port")
    parser.add_argument("--seq", choices=["nv_esr", "rabi", "t1", "t2", "xy8"], default="nv_esr", help="Sequence type")
    parser.add_argument("--freq", type=float, default=2.87e9, help="Microwave frequency (Hz)")
    parser.add_argument("--start-freq", type=float, default=2.80e9, help="NV-ESR start frequency")
    parser.add_argument("--stop-freq", type=float, default=2.95e9, help="NV-ESR stop frequency")
    parser.add_argument("--step-freq", type=float, default=1e6, help="NV-ESR frequency step")
    parser.add_argument("--output", default="odmr_results.json", help="Output file")
    args = parser.parse_args()

    exp = ODMRExperiment(
        bitstream_path=args.bit,
        b210_host=args.b210_host,
        b210_port=args.b210_port,
    )

    try:
        exp.initialize()

        if args.seq == "nv_esr":
            results = exp.run_nv_esr(start_freq_hz=args.start_freq, stop_freq_hz=args.stop_freq, step_freq_hz=args.step_freq)
        elif args.seq == "rabi":
            results = exp.run_rabi(freq_hz=args.freq)
        elif args.seq == "t1":
            results = exp.run_t1(freq_hz=args.freq)
        elif args.seq == "t2":
            results = exp.run_t2_hahn(freq_hz=args.freq)
        elif args.seq == "xy8":
            results = exp.run_xy8_n(freq_hz=args.freq)

        exp.save_results(results, args.output)

        if args.seq == "nv_esr":
            field = results.get("field_estimate_g", 0)
            print(f"\n{'='*50}")
            print(f"NV-ESR Complete!")
            print(f"  Estimated B-field: {field:.1f} Gauss")
            print(f"  Frequencies: {results['frequencies_hz'].shape[0]} points")
            print(f"{'='*50}")

    finally:
        exp.shutdown()


if __name__ == "__main__":
    main()
