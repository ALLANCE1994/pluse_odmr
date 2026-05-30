import time
import json
import urllib.request
import urllib.error
from typing import Optional, List, Tuple, Dict


class RemoteB210Error(Exception):
    pass


class RemoteB210:
    def __init__(self, server_host: str = "192.168.1.100", server_port: int = 5000, timeout_s: float = 10.0):
        self._base_url = f"http://{server_host}:{server_port}"
        self._timeout = timeout_s

    def _get(self, endpoint: str) -> dict:
        url = f"{self._base_url}{endpoint}"
        try:
            req = urllib.request.Request(url, method="GET")
            with urllib.request.urlopen(req, timeout=self._timeout) as resp:
                return json.loads(resp.read().decode("utf-8"))
        except urllib.error.URLError as e:
            raise RemoteB210Error(f"GET {endpoint} failed: {e.reason}") from e
        except ConnectionError as e:
            raise RemoteB210Error(f"Cannot reach B210 server at {self._base_url}: {e}") from e

    def _post(self, endpoint: str, data: dict) -> dict:
        url = f"{self._base_url}{endpoint}"
        try:
            body = json.dumps(data).encode("utf-8")
            req = urllib.request.Request(url, data=body, method="POST")
            req.add_header("Content-Type", "application/json")
            with urllib.request.urlopen(req, timeout=self._timeout) as resp:
                return json.loads(resp.read().decode("utf-8"))
        except urllib.error.URLError as e:
            raise RemoteB210Error(f"POST {endpoint} failed: {e.reason}") from e
        except ConnectionError as e:
            raise RemoteB210Error(f"Cannot reach B210 server at {self._base_url}: {e}") from e

    def health_check(self) -> bool:
        try:
            data = self._get("/health")
            return data.get("b210_connected", False)
        except RemoteB210Error:
            return False

    def wait_for_server(self, max_wait_s: float = 30.0) -> bool:
        start = time.time()
        while time.time() - start < max_wait_s:
            if self.health_check():
                print(f"[RemoteB210] Server ready after {time.time()-start:.1f}s")
                return True
            time.sleep(1.0)
        print("[RemoteB210] Timeout waiting for server")
        return False

    def get_status(self) -> dict:
        return self._get("/status")

    def get_frequency(self) -> float:
        return self._get("/frequency")["freq_hz"]

    def get_gain(self) -> float:
        return self._get("/gain")["gain_db"]

    def set_frequency(self, freq_hz: float):
        if freq_hz < 1.8e9 or freq_hz > 4.0e9:
            raise ValueError(f"Frequency {freq_hz/1e9:.3f} GHz out of B210 range [1.8, 4.0] GHz")
        result = self._post("/frequency", {"freq_hz": freq_hz})
        print(f"[RemoteB210] Set freq: {result['freq_mhz']:.6f} MHz")

    def set_gain(self, gain_db: float):
        result = self._post("/gain", {"gain_db": gain_db})
        print(f"[RemoteB210] Set gain: {result['gain_db']} dB")

    def tx_start(self):
        self._post("/tx/start", {})
        print("[RemoteB210] TX started (CW)")

    def tx_stop(self):
        self._post("/tx/stop", {})
        print("[RemoteB210] TX stopped")

    def tx_pulsed(self, pulse_width_s: float = 40e-9, pulse_period_s: float = 5e-6, num_pulses: int = 1):
        self._post("/tx/pulsed", {
            "pulse_width_s": pulse_width_s,
            "pulse_period_s": pulse_period_s,
            "num_pulses": num_pulses,
        })

    def set_sequence_mode(self, seq_type: int, freq_hz: float = 2.87e9, **kwargs):
        data = {"sequence_type": seq_type, "freq_hz": freq_hz}
        data.update(kwargs)
        result = self._post("/sequence/mode", data)
        print(f"[RemoteB210] Sequence mode: 0x{result['mode']:02X}, freq: {result['freq_hz']/1e9:.6f} GHz")

    def set_nv_esr_mode(self, center_freq_hz: float = 2.87e9, sweep_range_hz: float = 50e6, step_hz: float = 1e6, dwell_s: float = 0.1):
        self.set_sequence_mode(0x00, freq_hz=center_freq_hz, sweep_range_hz=sweep_range_hz, step_hz=step_hz, dwell_s=dwell_s)

    def set_rabi_mode(self, freq_hz: float = 2.87e9, pw_min_s: float = 10e-9, pw_max_s: float = 100e-9, n_steps: int = 20):
        self.set_sequence_mode(0x01, freq_hz=freq_hz, pw_min_s=pw_min_s, pw_max_s=pw_max_s, n_steps=n_steps)

    def set_t1_mode(self, freq_hz: float = 2.87e9, tau_min_s: float = 1e-6, tau_max_s: float = 10e-3, n_steps: int = 50):
        self.set_sequence_mode(0x10, freq_hz=freq_hz, tau_min_s=tau_min_s, tau_max_s=tau_max_s, n_steps=n_steps)

    def set_t2_hahn_mode(self, freq_hz: float = 2.87e9, tau_min_s: float = 50e-9, tau_max_s: float = 10e-6, n_steps: int = 50):
        self.set_sequence_mode(0x11, freq_hz=freq_hz, tau_min_s=tau_min_s, tau_max_s=tau_max_s, n_steps=n_steps)

    def set_xy8_n_mode(self, freq_hz: float = 2.87e9, n_values: List[int] = None):
        self.set_sequence_mode(0x100, freq_hz=freq_hz, n_values=n_values)

    def set_correlation_mode(self, freq_hz: float = 2.87e9, t_corr_min_s: float = 0, t_corr_max_s: float = 350e-6, n_steps: int = 100):
        self.set_sequence_mode(0x101, freq_hz=freq_hz, t_corr_min_s=t_corr_min_s, t_corr_max_s=t_corr_max_s, n_steps=n_steps)

    def start_sweep(self, start_freq_hz: float = 2.80e9, stop_freq_hz: float = 2.95e9, step_freq_hz: float = 1e6, dwell_time_s: float = 0.05, repetitions: int = 1):
        self._post("/sweep/start", {
            "start_freq_hz": start_freq_hz,
            "stop_freq_hz": stop_freq_hz,
            "step_freq_hz": step_freq_hz,
            "dwell_time_s": dwell_time_s,
            "repetitions": repetitions,
        })
        print(f"[RemoteB210] Sweep: {start_freq_hz/1e6:.1f} ~ {stop_freq_hz/1e6:.1f} MHz")

    def reset_time(self):
        self._post("/reset", {})

    def print_status(self):
        try:
            s = self.get_status()
            print("=" * 50)
            print("B210mini Status via Remote Server")
            print(f"  Board:        {s.get('mboard_name', 'N/A')}")
            print(f"  TX Freq:      {s.get('tx_freq_hz', 0)/1e9:.6f} GHz")
            print(f"  TX Gain:      {s.get('tx_gain_db', 0)} dB")
            print(f"  TX Rate:      {s.get('tx_rate_hz', 0)/1e6:.1f} Msps")
            print(f"  Clock Source: {s.get('clock_source', 'N/A')}")
            print(f"  Time Source:  {s.get('time_source', 'N/A')}")
            print(f"  REF Locked:   {s.get('ref_locked', 'N/A')}")
            print("=" * 50)
        except RemoteB210Error as e:
            print(f"[RemoteB210] Cannot get status: {e}")
