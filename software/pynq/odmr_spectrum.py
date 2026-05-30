import os
import time
import numpy as np

try:
    from .overlay_loader import load_overlay, get_ip
    from .pulse_odmr_ip import PulseOdmrIP
    from .pulse_sequences import (
        PulseSequences,
        NV_ZERO_FIELD, NV_GYRO_RATIO,
        freq_to_field, field_to_freq,
        DEFAULT_PI_NS, DEFAULT_PI2_NS, DEFAULT_AOM_NS,
        DEFAULT_TAU_NS, DEFAULT_TCORR_NS,
    )
    from .ad_collect import ADCollector
except ImportError:
    from overlay_loader import load_overlay, get_ip
    from pulse_odmr_ip import PulseOdmrIP
    from pulse_sequences import (
        PulseSequences,
        NV_ZERO_FIELD, NV_GYRO_RATIO,
        freq_to_field, field_to_freq,
        DEFAULT_PI_NS, DEFAULT_PI2_NS, DEFAULT_AOM_NS,
        DEFAULT_TAU_NS, DEFAULT_TCORR_NS,
    )
    from ad_collect import ADCollector


DATA_DIR = os.path.join(os.path.dirname(os.path.abspath(__file__)), "data")


class ODMRSpectrum:

    def __init__(self, bit_path=None, sample_points=1024):
        self.ol = load_overlay(bit_path)
        self.ip_raw = get_ip(self.ol)
        self.ip = PulseOdmrIP(self.ip_raw)
        self.seq = PulseSequences(self.ip)
        self.adc = ADCollector(self.ip, sample_points=sample_points)
        self.sample_points = sample_points

    def close(self):
        self.ip.system_disable()

    def nv_esr_scan(self, freq_start_khz, freq_end_khz, freq_step_khz=100,
                     n_averages=1, aom_width_ns=DEFAULT_AOM_NS):
        freqs = list(range(freq_start_khz, freq_end_khz + 1, freq_step_khz))
        intensities = []
        for f in freqs:
            self.ip.set_mw_freq(f)
            self.ip.set_pulse0(aom_width_ns, 0)
            signal = self.adc.get_fluorescence_signal(n_averages=n_averages)
            intensities.append(signal)
        return np.array(freqs), np.array(intensities)

    def rabi_scan(self, width_start_ns, width_end_ns, width_step_ns=2,
                   mw_freq_khz=NV_ZERO_FIELD, n_averages=1,
                   aom_width_ns=DEFAULT_AOM_NS):
        self.ip.set_mw_freq(mw_freq_khz)
        widths = list(range(width_start_ns, width_end_ns + 1, width_step_ns))
        intensities = []
        for w in widths:
            self.ip.set_pulse0(aom_width_ns, 0)
            self.ip.set_pulse1(w, aom_width_ns)
            self.seq.rabi(w, aom_width_ns)
            signal = self.adc.get_fluorescence_signal(n_averages=n_averages)
            intensities.append(signal)
        return np.array(widths), np.array(intensities)

    def t1_scan(self, wait_start_ns, wait_end_ns, n_points=50,
                 mw_freq_khz=NV_ZERO_FIELD, n_averages=1,
                 aom_width_ns=DEFAULT_AOM_NS, pi_ns=DEFAULT_PI_NS):
        self.ip.set_mw_freq(mw_freq_khz)
        step = (wait_end_ns - wait_start_ns) // max(n_points - 1, 1)
        waits = []
        intensities = []
        for i in range(n_points):
            w = wait_start_ns + i * step
            waits.append(w)
            self.ip.set_pulse0(aom_width_ns, 0)
            self.ip.set_pulse1(pi_ns, 0)
            self.seq.t1(w, aom_width_ns)
            signal = self.adc.get_fluorescence_signal(n_averages=n_averages)
            intensities.append(signal)
        return np.array(waits), np.array(intensities)

    def t2_scan(self, tau_start_ns, tau_end_ns, n_points=50,
                 mw_freq_khz=NV_ZERO_FIELD, n_averages=1,
                 pi_ns=DEFAULT_PI_NS, pi2_ns=DEFAULT_PI2_NS,
                 aom_width_ns=DEFAULT_AOM_NS):
        self.ip.set_mw_freq(mw_freq_khz)
        step = (tau_end_ns - tau_start_ns) // max(n_points - 1, 1)
        taus = []
        intensities = []
        for i in range(n_points):
            t = tau_start_ns + i * step
            taus.append(t)
            self.ip.set_pulse0(aom_width_ns, 0)
            self.ip.set_pulse1(pi_ns, 0)
            self.seq.t2_hahn(t, pi_ns, pi2_ns, aom_width_ns)
            signal = self.adc.get_fluorescence_signal(n_averages=n_averages)
            intensities.append(signal)
        return np.array(taus), np.array(intensities)

    def xy8_n_scan(self, n_list, tau_ns=DEFAULT_TAU_NS,
                    mw_freq_khz=NV_ZERO_FIELD, n_averages=1,
                    pi_ns=DEFAULT_PI_NS, aom_width_ns=DEFAULT_AOM_NS):
        self.ip.set_mw_freq(mw_freq_khz)
        intensities = []
        for n in n_list:
            self.ip.set_pulse0(aom_width_ns, 0)
            self.ip.set_pulse1(pi_ns, 0)
            self.seq.xy8_n(n, tau_ns, pi_ns, aom_width_ns)
            signal = self.adc.get_fluorescence_signal(n_averages=n_averages)
            intensities.append(signal)
        return np.array(n_list), np.array(intensities)

    def corr_spectroscopy_scan(self, t_corr_start_ns, t_corr_end_ns,
                                n_points=50, n=4, tau_ns=DEFAULT_TAU_NS,
                                mw_freq_khz=NV_ZERO_FIELD, n_averages=1,
                                pi_ns=DEFAULT_PI_NS, aom_width_ns=DEFAULT_AOM_NS):
        self.ip.set_mw_freq(mw_freq_khz)
        step = (t_corr_end_ns - t_corr_start_ns) // max(n_points - 1, 1)
        t_corrs = []
        intensities = []
        for i in range(n_points):
            tc = t_corr_start_ns + i * step
            t_corrs.append(tc)
            self.ip.set_pulse0(aom_width_ns, 0)
            self.ip.set_pulse1(pi_ns, 0)
            self.seq.corr_spectroscopy(tc, n, tau_ns, pi_ns, aom_width_ns)
            signal = self.adc.get_fluorescence_signal(n_averages=n_averages)
            intensities.append(signal)
        return np.array(t_corrs), np.array(intensities)

    def save_data(self, filename, x_data, y_data, metadata=None):
        os.makedirs(DATA_DIR, exist_ok=True)
        path = os.path.join(DATA_DIR, filename)
        header = ""
        if metadata:
            header = "# " + "\n# ".join("%s=%s" % (k, v) for k, v in metadata.items()) + "\n"
        with open(path, "w") as f:
            if header:
                f.write(header)
            for x, y in zip(x_data, y_data):
                f.write("%f,%f\n" % (x, y))
        return path

    @staticmethod
    def plot(x, y, xlabel="", ylabel="", title="", filename=None):
        try:
            import matplotlib
            matplotlib.use("Agg")
            import matplotlib.pyplot as plt
        except ImportError:
            print("matplotlib not available, skipping plot")
            return

        fig, ax = plt.subplots(figsize=(10, 6))
        ax.plot(x, y, marker=".", markersize=3, linewidth=0.8)
        ax.set_xlabel(xlabel)
        ax.set_ylabel(ylabel)
        ax.set_title(title)
        ax.grid(True, alpha=0.3)
        if filename:
            path = os.path.join(DATA_DIR, filename)
            os.makedirs(DATA_DIR, exist_ok=True)
            fig.savefig(path, dpi=150, bbox_inches="tight")
        try:
            plt.show()
        except Exception:
            pass
        return fig


def demo_esr(bit_path=None):
    spec = ODMRSpectrum(bit_path)
    try:
        freqs, intensities = spec.nv_esr_scan(
            freq_start_khz=2800000, freq_end_khz=2940000,
            freq_step_khz=200, n_averages=1
        )
        fields = freq_to_field(freqs)
        spec.save_data("esr_scan.csv", fields, intensities,
                        metadata={"scan": "NV-ESR", "date": time.strftime("%Y-%m-%d")})
        spec.plot(fields, intensities,
                   xlabel="Magnetic Field (G)", ylabel="Fluorescence (a.u.)",
                   title="NV-ESR Spectrum", filename="esr_scan.png")
    finally:
        spec.close()


def demo_rabi(bit_path=None):
    spec = ODMRSpectrum(bit_path)
    try:
        widths, intensities = spec.rabi_scan(
            width_start_ns=4, width_end_ns=200, width_step_ns=2, n_averages=1
        )
        spec.save_data("rabi_scan.csv", widths, intensities,
                        metadata={"scan": "Rabi", "date": time.strftime("%Y-%m-%d")})
        spec.plot(widths, intensities,
                   xlabel="MW Pulse Width (ns)", ylabel="Fluorescence (a.u.)",
                   title="Rabi Oscillation", filename="rabi_scan.png")
    finally:
        spec.close()


if __name__ == "__main__":
    import sys
    if len(sys.argv) > 1 and sys.argv[1] == "esr":
        demo_esr()
    elif len(sys.argv) > 1 and sys.argv[1] == "rabi":
        demo_rabi()
    else:
        print("Usage: python odmr_spectrum.py [esr|rabi]")
