from pynq import MMIO

REG_BASE = 0x43C00000
REG_SIZE = 0x00010000

REG_MAP = {
    "CTRL_REG":      0x00,
    "STAT_REG":      0x04,
    "CLK_CFG_REG":   0x10,
    "MMCM_CFG_REG":  0x14,
    "MW_FREQ_REG":   0x18,
    "MW_PHASE_REG":  0x1C,
    "PULSE0_CFG":    0x20,
    "PULSE1_CFG":    0x24,
    "PULSE2_CFG":    0x28,
    "PULSE3_CFG":    0x2C,
    "PULSE_SEQ":     0x30,
    "SEQ_SEL":       0x34,
    "SEQ_PARAM0":    0x38,
    "SEQ_PARAM1":    0x3C,
    "SEQ_PARAM2":    0x40,
    "ADC_CFG_REG":   0x44,
    "ADC_STAT_REG":  0x48,
    "DMA_CFG_REG":   0x60,
    "DMA_STAT_REG":  0x64,
}

REG_DEFAULTS = {
    "CTRL_REG":      0x00000000,
    "STAT_REG":      0x00000000,
    "CLK_CFG_REG":   0xC3500000,
    "MMCM_CFG_REG":  0x50190110,
    "MW_FREQ_REG":   0x002BCA00,
    "MW_PHASE_REG":  0x00000000,
    "PULSE0_CFG":    0x00001388,
    "PULSE1_CFG":    0x00140028,
    "PULSE2_CFG":    0x00001388,
    "PULSE3_CFG":    0x00001388,
    "PULSE_SEQ":     0x0000000F,
    "SEQ_SEL":       0x00000000,
    "SEQ_PARAM0":    0x00000001,
    "SEQ_PARAM1":    0x0000017A,
    "SEQ_PARAM2":    0x000186A0,
    "ADC_CFG_REG":   0x00000400,
    "ADC_STAT_REG":  0x00000000,
    "DMA_CFG_REG":   0x00000400,
    "DMA_STAT_REG":  0x00000000,
}


class PLRegDriver:

    def __init__(self, base_addr=REG_BASE, length=REG_SIZE):
        self.mmio = MMIO(base_addr, length)

    def read(self, offset):
        return self.mmio.read(offset)

    def write(self, offset, value):
        self.mmio.write(offset, value)

    def read_named(self, name):
        return self.read(REG_MAP[name])

    def write_named(self, name, value):
        self.write(REG_MAP[name], value)

    def dump_all(self):
        print("%-20s  %-8s  %s" % ("Register", "Offset", "Value"))
        print("-" * 50)
        for name, offset in sorted(REG_MAP.items(), key=lambda x: x[1]):
            val = self.read(offset)
            default = REG_DEFAULTS.get(name, 0)
            marker = "" if val == default else " *"
            print("%-20s  0x%04X   0x%08X%s" % (name, offset, val, marker))
        print("-" * 50)
        print("* marks registers differing from default")

    def verify_defaults(self):
        errors = []
        for name, offset in REG_MAP.items():
            val = self.read(offset)
            default = REG_DEFAULTS.get(name, 0)
            if val != default:
                errors.append("%s: 0x%08X (expected 0x%08X)" % (name, val, default))
        return errors

    def reset_all(self):
        for name, offset in REG_MAP.items():
            default = REG_DEFAULTS.get(name, 0)
            self.write(offset, default)
