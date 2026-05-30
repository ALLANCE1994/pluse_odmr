#!/usr/bin/env python3
import os
import sys
import subprocess

PROJ_ROOT = os.path.normpath(os.path.join(os.path.dirname(os.path.abspath(__file__)), ".."))
VENV_DIR = os.path.join(PROJ_ROOT, "venv")
REQUIREMENTS_FILE = os.path.join(PROJ_ROOT, "requirements.txt")

def get_venv_python():
    venv_python = os.path.join(VENV_DIR, "Scripts", "python.exe")
    if os.path.exists(venv_python):
        return venv_python
    return os.path.join(VENV_DIR, "bin", "python")

def get_venv_pip():
    venv_pip = os.path.join(VENV_DIR, "Scripts", "pip.exe")
    if os.path.exists(venv_pip):
        return venv_pip
    return os.path.join(VENV_DIR, "bin", "pip")

def install_requirements():
    print("=" * 60)
    print("Installing Python Requirements")
    print("=" * 60)

    venv_python = get_venv_python()
    venv_pip = get_venv_pip()

    print(f"\nVirtual environment: {VENV_DIR}")
    print(f"Requirements file: {REQUIREMENTS_FILE}")

    if not os.path.exists(venv_python):
        print(f"\nERROR: Virtual environment not found at {VENV_DIR}")
        print("Please run create_venv.py first.")
        return False

    if not os.path.exists(REQUIREMENTS_FILE):
        print(f"\nERROR: Requirements file not found at {REQUIREMENTS_FILE}")
        return False

    print(f"\nUpgrading pip...")
    try:
        subprocess.run([venv_python, "-m", "pip", "install", "--upgrade", "pip"],
                       check=True, capture_output=True, text=True)
    except subprocess.CalledProcessError as e:
        print(f"Warning: Failed to upgrade pip: {e}")

    print(f"\nInstalling packages from requirements.txt...")
    try:
        result = subprocess.run([venv_python, "-m", "pip", "install", "-r", REQUIREMENTS_FILE],
                                check=True, capture_output=True, text=True)
        print(result.stdout)
        if result.stderr:
            print(result.stderr)
        print("\nPackages installed successfully!")
        return True
    except subprocess.CalledProcessError as e:
        print(f"Failed to install requirements: {e}")
        print(f"stderr: {e.stderr}")
        return False

def verify_installation():
    print("\nVerifying installed packages...")
    venv_python = get_venv_python()

    packages = ["pynq", "numpy", "matplotlib", "pyserial", "scipy"]

    for package in packages:
        try:
            result = subprocess.run([venv_python, "-c", f"import {package}"],
                                   capture_output=True, text=True)
            if result.returncode == 0:
                print(f"  {package}: OK")
            else:
                print(f"  {package}: FAILED")
        except Exception as e:
            print(f"  {package}: ERROR - {e}")

if __name__ == "__main__":
    if install_requirements():
        verify_installation()
        print("\n" + "=" * 60)
        print("Requirements installation completed!")
        print("=" * 60)
        sys.exit(0)
    else:
        print("\n" + "=" * 60)
        print("Failed to install requirements.")
        print("=" * 60)
        sys.exit(1)
