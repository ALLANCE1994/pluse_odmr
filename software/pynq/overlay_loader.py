import os
from pynq import Overlay

OVERLAY_DIR = os.path.join(os.path.dirname(os.path.abspath(__file__)), "overlay")
OVERLAY_BIT = os.path.join(OVERLAY_DIR, "pulse_odmr.bit")
OVERLAY_HWH = os.path.join(OVERLAY_DIR, "pulse_odmr.hwh")
IP_NAME = "pulse_odmr_ip_0"


def load_overlay(bit_path=None):
    if bit_path is None:
        bit_path = OVERLAY_BIT
    if not os.path.isfile(bit_path):
        raise FileNotFoundError(
            "Overlay bitstream not found: %s\n"
            "Copy pulse_odmr.bit and pulse_odmr.hwh to %s" % (bit_path, OVERLAY_DIR)
        )
    hwh_path = os.path.splitext(bit_path)[0] + ".hwh"
    if not os.path.isfile(hwh_path):
        raise FileNotFoundError("Overlay .hwh not found: %s" % hwh_path)
    ol = Overlay(bit_path)
    if not ol.is_loaded():
        raise RuntimeError("Overlay download failed")
    return ol


def get_ip(ol, ip_name=None):
    if ip_name is None:
        ip_name = IP_NAME
    if ip_name not in ol.ip_dict:
        available = list(ol.ip_dict.keys())
        raise KeyError(
            "IP '%s' not found in overlay. Available: %s" % (ip_name, available)
        )
    return ol.ip_dict[ip_name]
