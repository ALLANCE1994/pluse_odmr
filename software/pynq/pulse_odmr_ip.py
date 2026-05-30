from pynq.lib import DefaultIP

REG_ADDR = {
    "CTRL_REG":       0x00,
    "STAT_REG":       0x04,
    "CLK_CFG_REG":    0x10,
    "MMCM_CFG_REG":   0x14,
    "MW_FREQ_REG":    0x18,
    "MW_PHASE_REG":   0x1C,
    "PULSE0_CFG":     0x20,
    "PULSE1_CFG":     0x24,
    "PULSE2_CFG":     0x28,
    "PULSE3_CFG":     0x2C,
    "PULSE_SEQ":      0x30,
    "SEQ_SEL":        0x34,
    "SEQ_PARAM0":     0x38,
    "SEQ_PARAM1":     0x3C,
    "SEQ_PARAM2":     0x40,
    "ADC_CFG_REG":    0x44,
    "ADC_STAT_REG":   0x48,
    "DMA_CFG_REG":    0x60,
    "DMA_STAT_REG":   0x64,
}

CTRL_ENABLE       = 1 << 0
CTRL_PULSE_EN     = 1 << 1
CTRL_ADC_EN       = 1 << 2
CTRL_DMA_EN       = 1 << 3
CTRL_SEQ_START    = 1 << 4

STAT_READY        = 1 << 0
STAT_ADC_OVF      = 1 << 1
STAT_FIFO_EMPTY   = 1 << 2
STAT_FIFO_FULL    = 1 << 3
STAT_SEQ_DONE     = 1 << 4

SEQ_NV_ESR        = 0
SEQ_RABI          = 1
SEQ_T1            = 2
SEQ_T2            = 3
SEQ_XY8_N         = 4
SEQ_CORR_SPEC     = 5


class PulseOdmrIP(DefaultIP):

    def __init__(self, description):
        super().__init__(description=description)

    bindto = ["odmr.lab:user:pulse_odmr_ip:1.0"]

    def _read(self, offset):
        return self.read(offset)

    def _write(self, offset, value):
        self.write(offset, value)

    def get_ctrl(self):
        return self._read(REG_ADDR["CTRL_REG"])

    def set_ctrl(self, enable=False, pulse_en=False, adc_en=False,
                 dma_en=False, seq_start=False):
        val = 0
        if enable:    val |= CTRL_ENABLE
        if pulse_en:  val |= CTRL_PULSE_EN
        if adc_en:    val |= CTRL_ADC_EN
        if dma_en:    val |= CTRL_DMA_EN
        if seq_start: val |= CTRL_SEQ_START
        self._write(REG_ADDR["CTRL_REG"], val)
        return val

    def system_enable(self):
        self.set_ctrl(enable=True)

    def system_disable(self):
        self._write(REG_ADDR["CTRL_REG"], 0x00000000)

    def trigger_sequence(self):
        cur = self._read(REG_ADDR["CTRL_REG"])
        self._write(REG_ADDR["CTRL_REG"], cur | CTRL_SEQ_START)

    def get_status(self):
        return self._read(REG_ADDR["STAT_REG"])

    def is_ready(self):
        return bool(self._read(REG_ADDR["STAT_REG"]) & STAT_READY)

    def is_seq_done(self):
        return bool(self._read(REG_ADDR["STAT_REG"]) & STAT_SEQ_DONE)

    def wait_seq_done(self, timeout_ms=5000, poll_interval_ms=10):
        import time
        start = time.time()
        while not self.is_seq_done():
            if (time.time() - start) * 1000 > timeout_ms:
                raise TimeoutError("Sequence did not complete within %d ms" % timeout_ms)
            time.sleep(poll_interval_ms / 1000.0)

    def set_mmcm_cfg(self, m=16, d=1, clk32_div=25, clk10_div=80):
        val = (clk10_div << 24) | (clk32_div << 16) | (d << 8) | m
        self._write(REG_ADDR["MMCM_CFG_REG"], val)

    def set_mw_freq(self, freq_khz):
        self._write(REG_ADDR["MW_FREQ_REG"], freq_khz)

    def get_mw_freq(self):
        return self._read(REG_ADDR["MW_FREQ_REG"])

    def set_mw_phase(self, phase_sel):
        self._write(REG_ADDR["MW_PHASE_REG"], phase_sel & 0x3)

    def set_pulse0(self, width_ns, delay_ns=0):
        self._write(REG_ADDR["PULSE0_CFG"], (delay_ns << 16) | (width_ns & 0xFFFF))

    def set_pulse1(self, width_ns, delay_ns=0):
        self._write(REG_ADDR["PULSE1_CFG"], (delay_ns << 16) | (width_ns & 0xFFFF))

    def set_pulse2(self, width_ns, delay_ns=0):
        self._write(REG_ADDR["PULSE2_CFG"], (delay_ns << 16) | (width_ns & 0xFFFF))

    def set_pulse3(self, width_ns, delay_ns=0):
        self._write(REG_ADDR["PULSE3_CFG"], (delay_ns << 16) | (width_ns & 0xFFFF))

    def get_pulse0(self):
        v = self._read(REG_ADDR["PULSE0_CFG"])
        return {"width_ns": v & 0xFFFF, "delay_ns": (v >> 16) & 0xFFFF}

    def set_pulse_mask(self, mask):
        self._write(REG_ADDR["PULSE_SEQ"], mask & 0xF)

    def select_sequence(self, seq_type):
        self._write(REG_ADDR["SEQ_SEL"], seq_type)

    def set_seq_param0(self, val):
        self._write(REG_ADDR["SEQ_PARAM0"], val)

    def set_seq_param1(self, val):
        self._write(REG_ADDR["SEQ_PARAM1"], val)

    def set_seq_param2(self, val):
        self._write(REG_ADDR["SEQ_PARAM2"], val)

    def set_adc_sample_count(self, n_points):
        cur = self._read(REG_ADDR["ADC_CFG_REG"])
        cur = (cur & 0xFFFF0000) | (n_points & 0xFFFF)
        self._write(REG_ADDR["ADC_CFG_REG"], cur)

    def get_adc_status(self):
        return self._read(REG_ADDR["ADC_STAT_REG"])

    def is_adc_overflow(self):
        return bool(self._read(REG_ADDR["STAT_REG"]) & STAT_ADC_OVF)

    def set_dma_length(self, n_bytes):
        self._write(REG_ADDR["DMA_CFG_REG"], n_bytes)

    def is_dma_done(self):
        return bool(self._read(REG_ADDR["DMA_STAT_REG"]) & 0x1)


from pynq import Overlay
Overlay.register_custom_overlay("pulse_odmr", PulseOdmrIP)
