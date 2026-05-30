#!/usr/bin/env python3
import os
import sys
import json
import subprocess

PROJ_ROOT = os.path.normpath(os.path.join(os.path.dirname(os.path.abspath(__file__)), ".."))
VIVADO_BAT = "C:\\Xilinx\\Vivado\\2020.2\\bin\\vivado.bat"
CONFIG_FILE = os.path.join(PROJ_ROOT, "trae.config.json")

def load_config():
    if os.path.exists(CONFIG_FILE):
        with open(CONFIG_FILE, "r") as f:
            return json.load(f)
    return {}

def validate_vivado():
    print("=" * 60)
    print("Validating Vivado Environment")
    print("=" * 60)

    config = load_config()
    vivado_path = config.get("vivado", {}).get("path", VIVADO_BAT)
    vivado_version = config.get("vivado", {}).get("version", "2020.2")

    print(f"\nConfigured Vivado path: {vivado_path}")
    print(f"Configured Vivado version: {vivado_version}")

    if not os.path.exists(vivado_path):
        print(f"\n[ERROR] Vivado not found at: {vivado_path}")
        return False

    print(f"\n[OK] Vivado found at: {vivado_path}")

    vivado_dir = os.path.dirname(os.path.dirname(vivado_path))
    print(f"Vivado installation directory: {vivado_dir}")

    print("\n[INFO] Skipping Vivado version check (requires interactive mode)")
    print("[OK] Vivado environment validation passed!")
    return True

if __name__ == "__main__":
    if validate_vivado():
        print("\n" + "=" * 60)
        print("Vivado environment validation: PASSED")
        print("=" * 60)
        sys.exit(0)
    else:
        print("\n" + "=" * 60)
        print("Vivado environment validation: FAILED")
        print("=" * 60)
        sys.exit(1)
