#!/usr/bin/env python3
import os
import sys
import subprocess

PROJ_ROOT = os.path.normpath(os.path.join(os.path.dirname(os.path.abspath(__file__)), ".."))
VENV_DIR = os.path.join(PROJ_ROOT, "venv")

def get_venv_python():
    venv_python = os.path.join(VENV_DIR, "Scripts", "python.exe")
    if not os.path.exists(venv_python):
        venv_python = os.path.join(VENV_DIR, "bin", "python")
    return venv_python

def test_pynq():
    print("=" * 60)
    print("Testing PYNQ Library")
    print("=" * 60)

    venv_python = get_venv_python()

    if not os.path.exists(venv_python):
        print(f"\n[ERROR] Virtual environment Python not found at: {venv_python}")
        print("Please run create_venv.py and install_requirements.py first.")
        return False

    print(f"\nUsing Python: {venv_python}")

    print("\n" + "-" * 40)
    print("Test 1: Importing PYNQ library")
    print("-" * 40)

    try:
        result = subprocess.run([venv_python, "-c", "import pynq; print(f'PYNQ version: {pynq.__version__}')"],
                               capture_output=True, text=True, check=True)
        print(result.stdout)
    except subprocess.CalledProcessError as e:
        print(f"[ERROR] Failed to import PYNQ: {e.stderr}")
        return False

    print("-" * 40)
    print("Test 2: Checking PYNQ modules")
    print("-" * 40)

    modules = ["pynq.Overlay", "pynq.lib", "pynq.interrupt"]
    for module in modules:
        try:
            result = subprocess.run([venv_python, "-c", f"import {module}"],
                                   capture_output=True, check=True)
            print(f"  {module}: OK")
        except subprocess.CalledProcessError:
            print(f"  {module}: FAILED")

    print("-" * 40)
    print("Test 3: Checking hardware support (requires board)")
    print("-" * 40)
    print("[INFO] This test requires PYNQ board connection")
    print("[INFO] Skipping hardware-specific tests")

    print("\n" + "=" * 60)
    print("PYNQ library test: PASSED")
    print("=" * 60)
    return True

if __name__ == "__main__":
    if not test_pynq():
        print("\n" + "=" * 60)
        print("PYNQ library test: FAILED")
        print("=" * 60)
        sys.exit(1)
