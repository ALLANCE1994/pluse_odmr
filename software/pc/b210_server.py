import json
import time
import threading
from http.server import HTTPServer, BaseHTTPRequestHandler
from urllib.parse import urlparse
from b210_controller import B210Controller, B210TxConfig, SweepParams, SequenceType


class _B210Handler(BaseHTTPRequestHandler):
    controller: B210Controller = None
    _server_start_time: float = 0.0

    def log_message(self, format, *args):
        print(f"[B210-Server] {self.address_string()} - {format % args}")

    def _send_json(self, status_code: int, data: dict):
        self.send_response(status_code)
        self.send_header("Content-Type", "application/json; charset=utf-8")
        self.send_header("Access-Control-Allow-Origin", "*")
        self.end_headers()
        self.wfile.write(json.dumps(data, ensure_ascii=False).encode("utf-8"))

    def _read_body(self) -> dict:
        length = int(self.headers.get("Content-Length", 0))
        if length == 0:
            return {}
        return json.loads(self.rfile.read(length).decode("utf-8"))

    def do_OPTIONS(self):
        self.send_response(200)
        self.send_header("Access-Control-Allow-Origin", "*")
        self.send_header("Access-Control-Allow-Methods", "GET, POST, OPTIONS")
        self.send_header("Access-Control-Allow-Headers", "Content-Type")
        self.end_headers()

    def do_GET(self):
        parsed = urlparse(self.path)
        path = parsed.path.rstrip("/")
        ctrl = self.controller

        if path == "/status":
            info = ctrl.get_device_info() if ctrl else {"status": "no_controller"}
            self._send_json(200, info)

        elif path == "/frequency":
            self._send_json(200, {"freq_hz": ctrl.get_frequency() if ctrl else 0})

        elif path == "/gain":
            self._send_json(200, {"gain_db": ctrl.get_gain() if ctrl else 0})

        elif path == "/health":
            self._send_json(200, {
                "alive": True,
                "uptime_s": time.time() - self._server_start_time,
                "b210_connected": ctrl is not None and ctrl._usrp is not None,
            })

        else:
            self._send_json(404, {"error": f"Unknown endpoint: {path}"})

    def do_POST(self):
        parsed = urlparse(self.path)
        path = parsed.path.rstrip("/")
        ctrl = self.controller
        body = self._read_body()

        if ctrl is None:
            self._send_json(503, {"error": "B210 controller not initialized"})
            return

        if path == "/frequency":
            freq_hz = body.get("freq_hz")
            if freq_hz is None:
                self._send_json(400, {"error": "Missing freq_hz"})
                return
            if freq_hz < 1.8e9 or freq_hz > 4.0e9:
                self._send_json(400, {"error": f"Frequency {freq_hz} out of range [1.8G, 4G]"})
                return
            ctrl.set_frequency(freq_hz)
            self._send_json(200, {"freq_hz": ctrl.get_frequency(), "freq_mhz": ctrl.get_frequency() / 1e6})

        elif path == "/gain":
            gain_db = body.get("gain_db")
            if gain_db is None:
                self._send_json(400, {"error": "Missing gain_db"})
                return
            ctrl.set_gain(gain_db)
            self._send_json(200, {"gain_db": ctrl.get_gain()})

        elif path == "/tx/start":
            ctrl.tx_cw()
            self._send_json(200, {"tx_state": "continuous"})

        elif path == "/tx/stop":
            ctrl.stop_tx()
            self._send_json(200, {"tx_state": "stopped"})

        elif path == "/tx/pulsed":
            pulse_w = body.get("pulse_width_s", 40e-9)
            pulse_p = body.get("pulse_period_s", 5e-6)
            num_p = body.get("num_pulses", 1)
            ctrl.tx_pulsed(pulse_w, pulse_p, num_p)
            self._send_json(200, {"tx_state": "pulsed", "count": num_p})

        elif path == "/sequence/mode":
            seq_type = body.get("sequence_type", 0x00)
            freq = body.get("freq_hz", 2.87e9)

            if seq_type == SequenceType.NV_ESR:
                ctrl.set_nv_esr_mode(center_freq_hz=freq,
                                     sweep_range_hz=body.get("sweep_range_hz", 50e6),
                                     step_hz=body.get("step_hz", 1e6),
                                     dwell_s=body.get("dwell_s", 0.1))
            elif seq_type == SequenceType.RABI:
                ctrl.set_rabi_mode(freq_hz=freq,
                                   pulse_width_range=(body.get("pw_min_s", 10e-9),
                                                      body.get("pw_max_s", 100e-9)),
                                   n_steps=body.get("n_steps", 20))
            elif seq_type == SequenceType.T1:
                ctrl.set_t1_mode(freq_hz=freq,
                                 tau_range=(body.get("tau_min_s", 1e-6), body.get("tau_max_s", 10e-3)),
                                 n_steps=body.get("n_steps", 50))
            elif seq_type == SequenceType.T2_HAHN_ECHO:
                ctrl.set_t2_hahn_mode(freq_hz=freq,
                                      tau_range=(body.get("tau_min_s", 50e-9), body.get("tau_max_s", 10e-6)),
                                      n_steps=body.get("n_steps", 50))
            elif seq_type == SequenceType.XY8_N:
                ctrl.set_xy8_n_mode(freq_hz=freq, n_values=body.get("n_values"))
            elif seq_type == SequenceType.CORRELATION_SPECTROSCOPY:
                ctrl.set_correlation_mode(freq_hz=freq,
                                          t_corr_range=(body.get("t_corr_min_s", 0), body.get("t_corr_max_s", 350e-6)),
                                          n_steps=body.get("n_steps", 100))
            else:
                self._send_json(400, {"error": f"Unknown sequence: 0x{seq_type:02X}"})
                return

            self._send_json(200, {"mode": seq_type, "freq_hz": freq})

        elif path == "/sweep/start":
            sweep = SweepParams(
                start_freq_hz=body.get("start_freq_hz", 2.80e9),
                stop_freq_hz=body.get("stop_freq_hz", 2.95e9),
                step_freq_hz=body.get("step_freq_hz", 1e6),
                dwell_time_s=body.get("dwell_time_s", 0.05),
                repetitions=body.get("repetitions", 1),
                freq_list_hz=body.get("freq_list_hz", []),
            )
            ctrl.run_frequency_sweep(sweep)
            self._send_json(200, {"sweep_state": "completed"})

        elif path == "/reset":
            if ctrl._usrp:
                ctrl._usrp.set_time_now(uhd.types.TimeSpec(0.0))
            self._send_json(200, {"time_reset": True})

        else:
            self._send_json(404, {"error": f"Unknown endpoint: {path}"})


class B210RESTServer:
    def __init__(self, host: str = "0.0.0.0", port: int = 5000, config: B210TxConfig = None):
        self._host = host
        self._port = port
        self._config = config or B210TxConfig()
        self._controller: B210Controller = None
        self._httpd: HTTPServer = None
        self._thread: threading.Thread = None

    def start(self):
        print(f"[B210-Server] Initializing B210mini...")
        self._controller = B210Controller(self._config)
        if not self._controller.connect():
            raise RuntimeError("Cannot connect to B210mini. Check USB3.0 cable and UHD driver.")

        _B210Handler.controller = self._controller
        _B210Handler._server_start_time = time.time()

        self._httpd = HTTPServer((self._host, self._port), _B210Handler)
        self._httpd.timeout = 1.0

        self._thread = threading.Thread(target=self._httpd.serve_forever, daemon=True)
        self._thread.start()

        print(f"[B210-Server] REST API listening on http://{self._host}:{self._port}")
        print(f"[B210-Server] Endpoints: /status /frequency /gain /tx/start /tx/stop "
              f"/tx/pulsed /sequence/mode /sweep/start /health /reset")
        print(f"[B210-Server] B210 waiting for 10MHz REF + PPS from ZYNQ J4 Pin1/2 ...")

    def stop(self):
        if self._httpd:
            self._httpd.shutdown()
            self._httpd.server_close()
        if self._controller:
            self._controller.close()
        print("[B210-Server] Shutdown complete")

    def wait_forever(self):
        try:
            while True:
                time.sleep(1)
        except KeyboardInterrupt:
            self.stop()

    @property
    def controller(self) -> B210Controller:
        return self._controller


def main():
    import argparse
    parser = argparse.ArgumentParser(description="B210mini REST API Server for pulse_odmr")
    parser.add_argument("--host", default="0.0.0.0", help="Listen address")
    parser.add_argument("--port", type=int, default=5000, help="Listen port")
    parser.add_argument("--freq", type=float, default=2.87e9, help="Default frequency (Hz)")
    parser.add_argument("--gain", type=float, default=70.0, help="Default TX gain (dB)")
    parser.add_argument("--rate", type=float, default=1e6, help="Sample rate (Hz)")
    parser.add_argument("--no-ext-clk", action="store_true", help="Use internal clock (debug only)")
    args = parser.parse_args()

    config = B210TxConfig(
        freq_hz=args.freq,
        tx_gain_db=args.gain,
        sample_rate_hz=args.rate,
        clock_source="internal" if args.no_ext_clk else "external",
        time_source="internal" if args.no_ext_clk else "external",
    )

    server = B210RESTServer(host=args.host, port=args.port, config=config)
    server.start()
    server.wait_forever()


if __name__ == "__main__":
    import uhd
    main()
