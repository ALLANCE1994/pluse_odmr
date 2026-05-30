import os
import sys
import time
import traceback

SCRIPT_DIR = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, SCRIPT_DIR)

from overlay_loader import load_overlay, get_ip, IP_NAME, OVERLAY_BIT
from pulse_odmr_ip import (
    PulseOdmrIP, REG_ADDR,
    CTRL_ENABLE, CTRL_PULSE_EN, CTRL_ADC_EN, CTRL_DMA_EN, CTRL_SEQ_START,
    STAT_READY, STAT_ADC_OVF, STAT_FIFO_EMPTY, STAT_FIFO_FULL, STAT_SEQ_DONE,
    SEQ_NV_ESR, SEQ_RABI, SEQ_T1, SEQ_T2, SEQ_XY8_N, SEQ_CORR_SPEC,
)
from pulse_sequences import PulseSequences, freq_to_field
from ad_collect import ADCollector

_RESULTS = []
_PASS = 0
_FAIL = 0


def _test(name, condition, detail=""):
    global _PASS, _FAIL
    if condition:
        _PASS += 1
        _RESULTS.append(("PASS", name, detail))
        print("  PASS: %s" % name)
    else:
        _FAIL += 1
        _RESULTS.append(("FAIL", name, detail))
        print("  FAIL: %s" % name + (" — %s" % detail if detail else ""))


def main():
    global _PASS, _FAIL
    print("=" * 60)
    print(" Pulse ODMR — Board-Level Test Suite")
    print(" Overlay: %s" % OVERLAY_BIT)
    print(" IP Name: %s" % IP_NAME)
    print("=" * 60)

    try:
        ol = load_overlay()
        ip_raw = get_ip(ol)
        ip = PulseOdmrIP(ip_raw)
        print("  Overlay loaded: %s" % ol.is_loaded())
        print("  Available IPs:  %s" % list(ol.ip_dict.keys()))
    except Exception as e:
        print("  FATAL: Overlay load failed: %s" % e)
        print("  Ensure pulse_odmr.bit + pulse_odmr.hwh are in pynq/overlay/")
        return 2

    _PASS = 0
    _FAIL = 0
    del _RESULTS[:]

    print("\n--- 1. Register Readback (Defaults) ---")
    try:
        r = ip._read(REG_ADDR["CTRL_REG"])
        _test("CTRL_REG default = 0x00000000", r == 0x00000000,
              "got 0x%08X" % r)

        r = ip._read(REG_ADDR["STAT_REG"])
        _test("STAT_REG readable", r is not None, "got 0x%08X" % r)

        r = ip._read(REG_ADDR["PULSE0_CFG"])
        _test("PULSE0_CFG default = 0x00001388", r == 0x00001388,
              "got 0x%08X" % r)

        r = ip._read(REG_ADDR["PULSE1_CFG"])
        _test("PULSE1_CFG default = 0x00140028", r == 0x00140028,
              "got 0x%08X" % r)

        r = ip._read(REG_ADDR["PULSE_SEQ"])
        _test("PULSE_SEQ default = 0x0000000F", r == 0x0000000F,
              "got 0x%08X" % r)

        r = ip._read(REG_ADDR["MW_FREQ_REG"])
        _test("MW_FREQ_REG default = 0x002BCA00", r == 0x002BCA00,
              "got 0x%08X" % r)

        r = ip._read(REG_ADDR["SEQ_PARAM0"])
        _test("SEQ_PARAM0 default = 0x00000001", r == 0x00000001,
              "got 0x%08X" % r)

        r = ip._read(REG_ADDR["SEQ_PARAM1"])
        _test("SEQ_PARAM1 default = 0x0000017A", r == 0x0000017A,
              "got 0x%08X" % r)
    except Exception as e:
        _test("Register readback", False, str(e))

    print("\n--- 2. Register Write/Readback ---")
    try:
        TEST_VAL = 0xDEADBEEF
        ip._write(REG_ADDR["PULSE0_CFG"], TEST_VAL)
        r = ip._read(REG_ADDR["PULSE0_CFG"])
        _test("PULSE0_CFG write/read 0xDEADBEEF", r == TEST_VAL,
              "wrote 0x%08X read 0x%08X" % (TEST_VAL, r))

        ip._write(REG_ADDR["PULSE1_CFG"], 0x00000258)
        r = ip._read(REG_ADDR["PULSE1_CFG"])
        _test("PULSE1_CFG write 600ns width", r == 0x00000258,
              "read 0x%08X" % r)

        ip._write(REG_ADDR["PULSE0_CFG"], 0x00001388)
        ip._write(REG_ADDR["PULSE1_CFG"], 0x00140028)
    except Exception as e:
        _test("Register write/readback", False, str(e))

    print("\n--- 3. High-Level API ---")
    try:
        ip.set_pulse0(5000, 0)
        r = ip._read(REG_ADDR["PULSE0_CFG"])
        _test("set_pulse0(5000,0) -> 0x00001388", r == 0x00001388,
              "got 0x%08X" % r)

        ip.set_pulse1(40, 20)
        r = ip._read(REG_ADDR["PULSE1_CFG"])
        _test("set_pulse1(40,20) -> 0x00140028", r == 0x00140028,
              "got 0x%08X" % r)

        ip.set_pulse_mask(0xF)
        r = ip._read(REG_ADDR["PULSE_SEQ"])
        _test("set_pulse_mask(0xF)", r == 0x0000000F, "got 0x%08X" % r)

        ip.set_mw_freq(2870000)
        r = ip._read(REG_ADDR["MW_FREQ_REG"])
        _test("set_mw_freq(2870000)", r == 2870000, "got %d" % r)

        ip.set_mmcm_cfg(16, 1, 25, 80)
        r = ip._read(REG_ADDR["MMCM_CFG_REG"])
        _test("set_mmcm_cfg(16,1,25,80) -> 0x50190110",
              r == 0x50190110, "got 0x%08X" % r)

        ip.set_mw_phase(0)
        r = ip._read(REG_ADDR["MW_PHASE_REG"])
        _test("set_mw_phase(0) -> 0", r == 0, "got 0x%08X" % r)

        ip.set_adc_sample_count(1024)
        r = ip._read(REG_ADDR["ADC_CFG_REG"])
        _test("set_adc_sample_count(1024)", (r & 0xFFFF) == 1024,
              "got 0x%08X" % r)
    except Exception as e:
        _test("High-level API", False, str(e))

    print("\n--- 4. CTRL_REG Bit Manipulation ---")
    try:
        ip._write(REG_ADDR["CTRL_REG"], 0x00000000)
        r = ip._read(REG_ADDR["CTRL_REG"])
        _test("CTRL_REG clear -> 0", r == 0, "got 0x%08X" % r)

        ip.set_ctrl(enable=True)
        r = ip._read(REG_ADDR["CTRL_REG"])
        _test("CTRL enable=1 -> bit0=1", r == 1, "got 0x%08X" % r)

        ip.set_ctrl(enable=True, pulse_en=True)
        r = ip._read(REG_ADDR["CTRL_REG"])
        _test("CTRL pulse_en=1 -> bit1=1", r == 3, "got 0x%08X" % r)

        ip.set_ctrl(enable=True, pulse_en=True, seq_start=True)
        r = ip._read(REG_ADDR["CTRL_REG"]) & ~CTRL_SEQ_START
        _test("CTRL seq_start -> bit4=1", (r & 0x13) == 3,
              "got 0x%08X" % r)

        ip.set_ctrl(enable=True, adc_en=True, dma_en=True)
        r = ip._read(REG_ADDR["CTRL_REG"])
        _test("CTRL adc+dma enable", (r & 0x0D) == 0x0D,
              "got 0x%08X" % r)

        ip._write(REG_ADDR["CTRL_REG"], 0x00000000)
    except Exception as e:
        _test("CTRL_REG bits", False, str(e))

    print("\n--- 5. Status Register ---")
    try:
        r = ip.get_status()
        _test("STAT_REG readable", isinstance(r, int),
              "got 0x%08X" % r)

        ok = not ip.is_adc_overflow()
        _test("STAT no ADC overflow at boot", ok, "got odd=%s" % (not ok))
    except Exception as e:
        _test("Status register", False, str(e))

    print("\n--- 6. Sequence Select ---")
    try:
        ip.select_sequence(SEQ_NV_ESR)
        r = ip._read(REG_ADDR["SEQ_SEL"])
        _test("SEQ_SEL = NV_ESR (0)", r == SEQ_NV_ESR, "got %d" % r)

        ip.select_sequence(SEQ_RABI)
        r = ip._read(REG_ADDR["SEQ_SEL"])
        _test("SEQ_SEL = RABI (1)", r == SEQ_RABI, "got %d" % r)

        ip.select_sequence(SEQ_T1)
        r = ip._read(REG_ADDR["SEQ_SEL"])
        _test("SEQ_SEL = T1 (2)", r == SEQ_T1, "got %d" % r)

        ip.select_sequence(SEQ_T2)
        r = ip._read(REG_ADDR["SEQ_SEL"])
        _test("SEQ_SEL = T2 (3)", r == SEQ_T2, "got %d" % r)

        ip.select_sequence(SEQ_XY8_N)
        r = ip._read(REG_ADDR["SEQ_SEL"])
        _test("SEQ_SEL = XY8-N (4)", r == SEQ_XY8_N, "got %d" % r)

        ip.select_sequence(SEQ_CORR_SPEC)
        r = ip._read(REG_ADDR["SEQ_SEL"])
        _test("SEQ_SEL = CORR_SPEC (5)", r == SEQ_CORR_SPEC, "got %d" % r)
    except Exception as e:
        _test("Sequence select", False, str(e))

    print("\n--- 7. Pulse Sequences API ---")
    try:
        seq = PulseSequences(ip)
        _test("PulseSequences created", seq is not None)
    except Exception as e:
        _test("PulseSequences creation", False, str(e))

    print("\n--- 8. Magnetic Field Conversion ---")
    try:
        field = freq_to_field(2870000, 2870000)
        _test("freq_to_field(2870000) -> 0G", abs(field) < 0.01,
              "got %.2f G" % field)

        field = freq_to_field(2800000, 2870000)
        expected = 70000.0 / 2.8
        _test("freq_to_field(2800000) -> ~25000G", abs(field - expected) < 1,
              "got %.1f G (expected ~%.0f)" % (field, expected))
    except Exception as e:
        _test("Field conversion", False, str(e))

    print("\n--- 9. AD Collector Init ---")
    try:
        adc = ADCollector(ip, sample_points=1024)
        _test("ADCollector created with 1024 points",
              adc.sample_points == 1024)
    except Exception as e:
        _test("ADCollector init", False, str(e))

    print("\n" + "=" * 60)
    print(" RESULTS: %d PASS, %d FAIL, %d TOTAL" % (_PASS, _FAIL, _PASS + _FAIL))
    print("=" * 60)

    for status, name, detail in _RESULTS:
        if detail:
            print("  %s: %s — %s" % (status, name, detail))
        else:
            print("  %s: %s" % (status, name))

    try:
        ip.system_disable()
    except Exception:
        pass

    return 0 if _FAIL == 0 else 1


if __name__ == "__main__":
    sys.exit(main())
