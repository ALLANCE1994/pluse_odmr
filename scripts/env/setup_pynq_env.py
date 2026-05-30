#!/usr/bin/env python3
import sys
import subprocess
import os
import json

PROJ_ROOT = os.path.normpath(os.path.join(os.path.dirname(os.path.abspath(__file__)), ".."))
CONFIG_FILE = os.path.join(PROJ_ROOT, "trae.config.json")
VIVADO_PYTHON_FALLBACK = "C:\\Xilinx\\Vivado\\2020.2\\tps\\win64\\python-3.8.3\\python.exe"
PACKAGES = ["pynq==2.7", "numpy", "matplotlib"]

def load_config():
    if os.path.exists(CONFIG_FILE):
        with open(CONFIG_FILE, "r") as f:
            return json.load(f)
    return {}

def get_vivado_python():
    config = load_config()
    return config.get("vivado", {}).get("python", {}).get("path", VIVADO_PYTHON_FALLBACK)

def install_packages():
    vivado_python = get_vivado_python()
    print("Installing packages to Vivado embedded Python...")
    print(f"Python path: {vivado_python}")

    if not os.path.exists(vivado_python):
        print(f"Warning: Python not found at {vivado_python}")
        print("Please ensure Vivado 2020.2 is installed.")
        return False

    for package in PACKAGES:
        print(f"Installing {package}...")
        try:
            subprocess.run([vivado_python, "-m", "pip", "install", package],
                          check=True, capture_output=True)
            print(f"  {package} installed successfully")
        except subprocess.CalledProcessError as e:
            print(f"  Failed to install {package}: {e}")
            return False

    print("\nAll packages installed successfully!")
    return True

def verify_installation():
    vivado_python = get_vivado_python()
    print("\nVerifying installation...")
    for package in ["pynq", "numpy", "matplotlib"]:
        try:
            result = subprocess.run([vivado_python, "-c", f"import {package.split('==')[0]}"],
                                   capture_output=True, text=True)
            if result.returncode == 0:
                print(f"  {package}: OK")
            else:
                print(f"  {package}: FAILED")
        except Exception as e:
            print(f"  {package}: ERROR - {e}")

if __name__ == "__main__":
    if install_packages():
        verify_installation()
    else:
        print("\nInstallation failed. Please check the output above.")
        sys.exit(1)
