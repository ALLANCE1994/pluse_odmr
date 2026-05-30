#!/usr/bin/env python3
import os
import sys
import json
import subprocess

PROJ_ROOT = os.path.normpath(os.path.join(os.path.dirname(os.path.abspath(__file__)), ".."))
VENV_DIR = os.path.join(PROJ_ROOT, "venv")
CONFIG_FILE = os.path.join(PROJ_ROOT, "trae.config.json")

def load_config():
    if os.path.exists(CONFIG_FILE):
        with open(CONFIG_FILE, "r") as f:
            return json.load(f)
    return {}

def get_venv_python():
    venv_python = os.path.join(VENV_DIR, "Scripts", "python.exe")
    if not os.path.exists(venv_python):
        venv_python = os.path.join(VENV_DIR, "bin", "python")
    return venv_python

def validate_python_env():
    print("=" * 60)
    print("Validating Python Environment")
    print("=" * 60)

    config = load_config()
    venv_dir = config.get("python", {}).get("venv_dir", VENV_DIR)
    python_version = config.get("python", {}).get("version", "3.8.2")

    print(f"\nConfigured venv directory: {venv_dir}")
    print(f"Expected Python version: {python_version}")

    venv_python = get_venv_python()

    if not os.path.exists(venv_python):
        print(f"\n[ERROR] Virtual environment Python not found at: {venv_python}")
        return False

    print(f"\n[OK] Virtual environment Python found: {venv_python}")

    try:
        result = subprocess.run([venv_python, "--version"],
                               capture_output=True, text=True, check=True)
        actual_version = result.stdout.strip()
        print(f"[OK] Python version: {actual_version}")
    except subprocess.CalledProcessError as e:
        print(f"[ERROR] Failed to get Python version: {e}")
        return False

    print("\nChecking installed packages...")
    packages = ["pynq", "numpy", "matplotlib", "pyserial", "scipy"]
    all_ok = True

    for package in packages:
        try:
            result = subprocess.run([venv_python, "-c", f"import {package}"],
                                   capture_output=True, check=True)
            print(f"  {package}: OK")
        except subprocess.CalledProcessError:
            print(f"  {package}: MISSING")
            all_ok = False

    if all_ok:
        print("\n[OK] Python environment validation passed!")
        return True
    else:
        print("\n[WARNING] Some packages are missing. Run install_requirements.py")
        return False

if __name__ == "__main__":
    if validate_python_env():
        print("\n" + "=" * 60)
        print("Python environment validation: PASSED")
        print("=" * 60)
        sys.exit(0)
    else:
        print("\n" + "=" * 60)
        print("Python environment validation: FAILED")
        print("=" * 60)
        sys.exit(1)
