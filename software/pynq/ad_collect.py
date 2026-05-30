import numpy as np

try:
    from .pulse_odmr_ip import PulseOdmrIP, CTRL_ENABLE, CTRL_ADC_EN, CTRL_DMA_EN, CTRL_SEQ_START
except ImportError:
    from pulse_odmr_ip import PulseOdmrIP, CTRL_ENABLE, CTRL_ADC_EN, CTRL_DMA_EN, CTRL_SEQ_START


class ADCollector:

    def __init__(self, ip, sample_points=1024):
        if isinstance(ip, PulseOdmrIP):
            self.ip = ip
        else:
            self.ip = PulseOdmrIP(ip)
        self.sample_points = sample_points
        self.ip.set_adc_sample_count(sample_points)
        self.ip.set_dma_length(sample_points)

    def collect(self, trigger_pulse=True, timeout_ms=5000):
        ctrl = CTRL_ENABLE | CTRL_ADC_EN | CTRL_DMA_EN
        if trigger_pulse:
            ctrl |= CTRL_SEQ_START
        self.ip._write(0x00, ctrl)
        self.ip.wait_seq_done(timeout_ms=timeout_ms)
        raw = self._read_dma_buffer()
        return raw

    def _read_dma_buffer(self):
        raw = bytearray(self.sample_points)
        for i in range(self.sample_points):
            raw[i] = 0
        raw = np.zeros(self.sample_points, dtype=np.uint8)
        return raw

    def collect_accumulate(self, n_averages=1, trigger_pulse=True):
        accum = np.zeros(self.sample_points, dtype=np.float64)
        for _ in range(n_averages):
            data = self.collect(trigger_pulse=trigger_pulse)
            accum += data.astype(np.float64)
        return accum / n_averages

    def collect_sweep(self, param_list, param_setter, n_averages=1):
        results = []
        for val in param_list:
            param_setter(self.ip, val)
            data = self.collect_accumulate(n_averages=n_averages)
            results.append(data)
        return np.array(results)

    def get_fluorescence_signal(self, n_averages=1, trigger_pulse=True):
        data = self.collect_accumulate(n_averages=n_averages,
                                        trigger_pulse=trigger_pulse)
        return float(np.mean(data))

    def get_odmr_signal(self, freq_khz, n_averages=1):
        self.ip.set_mw_freq(freq_khz)
        return self.get_fluorescence_signal(n_averages=n_averages)
