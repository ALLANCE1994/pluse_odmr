import time
try:
    from .pulse_odmr_ip import (
        PulseOdmrIP, SEQ_NV_ESR, SEQ_RABI, SEQ_T1, SEQ_T2, SEQ_XY8_N, SEQ_CORR_SPEC,
        CTRL_ENABLE, CTRL_PULSE_EN, CTRL_ADC_EN, CTRL_DMA_EN, CTRL_SEQ_START,
    )
except ImportError:
    from pulse_odmr_ip import (
        PulseOdmrIP, SEQ_NV_ESR, SEQ_RABI, SEQ_T1, SEQ_T2, SEQ_XY8_N, SEQ_CORR_SPEC,
        CTRL_ENABLE, CTRL_PULSE_EN, CTRL_ADC_EN, CTRL_DMA_EN, CTRL_SEQ_START,
    )

NV_ZERO_FIELD  = 2870000
NV_GYRO_RATIO  = 2.8
DEFAULT_PI_NS   = 40
DEFAULT_PI2_NS  = 20
DEFAULT_AOM_NS  = 5000
DEFAULT_TAU_NS  = 378
DEFAULT_TCORR_NS = 100000


def freq_to_field(freq_khz, d_zero=NV_ZERO_FIELD):
    return abs(d_zero - freq_khz) / NV_GYRO_RATIO


def field_to_freq(b_field_g, d_zero=NV_ZERO_FIELD):
    return d_zero - int(b_field_g * NV_GYRO_RATIO)


class PulseSequences:

    def __init__(self, ip):
        if isinstance(ip, PulseOdmrIP):
            self.ip = ip
        else:
            self.ip = PulseOdmrIP(ip)

    def _configure_and_trigger(self, seq_type, ctrl_bits=0, wait_done=True,
                                timeout_ms=5000):
        ctrl = CTRL_ENABLE | CTRL_PULSE_EN | ctrl_bits
        ctrl |= CTRL_SEQ_START
        self.ip.select_sequence(seq_type)
        self.ip._write(0x00, ctrl)
        if wait_done:
            self.ip.wait_seq_done(timeout_ms=timeout_ms)

    def nv_esr(self, freq_khz, aom_width_ns=DEFAULT_AOM_NS):
        self.ip.set_mw_freq(freq_khz)
        self.ip.set_pulse0(aom_width_ns, 0)
        self._configure_and_trigger(SEQ_NV_ESR)

    def nv_esr_sweep(self, freq_start_khz, freq_end_khz, freq_step_khz=1000,
                      aom_width_ns=DEFAULT_AOM_NS):
        freqs = list(range(freq_start_khz, freq_end_khz + 1, freq_step_khz))
        results = []
        for f in freqs:
            self.nv_esr(f, aom_width_ns)
            results.append(f)
        return freqs, results

    def rabi(self, mw_width_ns, aom_width_ns=DEFAULT_AOM_NS):
        self.ip.set_pulse0(aom_width_ns, 0)
        self.ip.set_pulse1(mw_width_ns, aom_width_ns)
        self._configure_and_trigger(SEQ_RABI)

    def rabi_sweep(self, width_start_ns, width_end_ns, width_step_ns=2,
                    aom_width_ns=DEFAULT_AOM_NS):
        widths = list(range(width_start_ns, width_end_ns + 1, width_step_ns))
        for w in widths:
            self.rabi(w, aom_width_ns)
        return widths

    def t1(self, wait_ns, aom_width_ns=DEFAULT_AOM_NS):
        self.ip.set_pulse0(aom_width_ns, 0)
        self.ip.set_seq_param0(wait_ns)
        self._configure_and_trigger(SEQ_T1)

    def t1_sweep(self, wait_start_ns, wait_end_ns, n_points=50,
                  aom_width_ns=DEFAULT_AOM_NS):
        step = (wait_end_ns - wait_start_ns) // max(n_points - 1, 1)
        waits = list(range(wait_start_ns, wait_end_ns + 1, step))
        for w in waits:
            self.t1(w, aom_width_ns)
        return waits

    def t2_hahn(self, tau_ns, pi_ns=DEFAULT_PI_NS, pi2_ns=DEFAULT_PI2_NS,
                 aom_width_ns=DEFAULT_AOM_NS):
        self.ip.set_pulse0(aom_width_ns, 0)
        self.ip.set_pulse1(pi_ns, 0)
        self.ip.set_seq_param0(tau_ns)
        self._configure_and_trigger(SEQ_T2)

    def t2_hahn_sweep(self, tau_start_ns, tau_end_ns, n_points=50,
                       pi_ns=DEFAULT_PI_NS, pi2_ns=DEFAULT_PI2_NS,
                       aom_width_ns=DEFAULT_AOM_NS):
        step = (tau_end_ns - tau_start_ns) // max(n_points - 1, 1)
        taus = list(range(tau_start_ns, tau_end_ns + 1, step))
        for t in taus:
            self.t2_hahn(t, pi_ns, pi2_ns, aom_width_ns)
        return taus

    def xy8_n(self, n, tau_ns=DEFAULT_TAU_NS, pi_ns=DEFAULT_PI_NS,
               aom_width_ns=DEFAULT_AOM_NS):
        self.ip.set_pulse0(aom_width_ns, 0)
        self.ip.set_pulse1(pi_ns, 0)
        self.ip.set_seq_param0(n)
        self.ip.set_seq_param1(tau_ns)
        self._configure_and_trigger(SEQ_XY8_N)

    def xy8_n_sweep(self, n_list, tau_ns=DEFAULT_TAU_NS,
                     pi_ns=DEFAULT_PI_NS, aom_width_ns=DEFAULT_AOM_NS):
        for n in n_list:
            self.xy8_n(n, tau_ns, pi_ns, aom_width_ns)
        return n_list

    def corr_spectroscopy(self, t_corr_ns, n=4, tau_ns=DEFAULT_TAU_NS,
                           pi_ns=DEFAULT_PI_NS, aom_width_ns=DEFAULT_AOM_NS):
        self.ip.set_pulse0(aom_width_ns, 0)
        self.ip.set_pulse1(pi_ns, 0)
        self.ip.set_seq_param0(n)
        self.ip.set_seq_param1(tau_ns)
        self.ip.set_seq_param2(t_corr_ns)
        self._configure_and_trigger(SEQ_CORR_SPEC)

    def corr_spectroscopy_sweep(self, t_corr_start_ns, t_corr_end_ns,
                                 n_points=50, n=4, tau_ns=DEFAULT_TAU_NS,
                                 pi_ns=DEFAULT_PI_NS, aom_width_ns=DEFAULT_AOM_NS):
        step = (t_corr_end_ns - t_corr_start_ns) // max(n_points - 1, 1)
        t_corrs = list(range(t_corr_start_ns, t_corr_end_ns + 1, step))
        for tc in t_corrs:
            self.corr_spectroscopy(tc, n, tau_ns, pi_ns, aom_width_ns)
        return t_corrs

    def force_pulse_outputs(self, pulse_mask=0xF):
        self.ip.set_pulse_mask(pulse_mask)
        self.ip.set_ctrl(enable=True, pulse_en=True, seq_start=True)

    def stop_outputs(self):
        self.ip._write(0x00, 0x00000000)
