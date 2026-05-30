#!/usr/bin/env python3
import os
import sys
import json
import shutil
import subprocess

PROJ_ROOT = os.path.normpath(os.path.join(os.path.dirname(os.path.abspath(__file__)), ".."))
VENV_DIR = os.path.join(PROJ_ROOT, "venv")
CONFIG_FILE = os.path.join(PROJ_ROOT, "trae.config.json")
FORCE_RECREATE = True

def load_config():
    if os.path.exists(CONFIG_FILE):
        with open(CONFIG_FILE, "r") as f:
            return json.load(f)
    return {}

def get_available_python():
    candidates = []
    config = load_config()
    vivado_python = config.get("vivado", {}).get("python", {}).get("path", "")
    if vivado_python and os.path.exists(vivado_python):
        candidates.append(vivado_python)
    for cmd in ["python3", "python"]:
        r = subprocess.run(["where", cmd], capture_output=True, text=True)
        for line in r.stdout.strip().split("\n"):
            line = line.strip()
            if line and os.path.exists(line) and "Microsoft" not in line:
                candidates.append(line)
    if not candidates:
        default = "C:\\Xilinx\\Vivado\\2020.2\\tps\\win64\\python-3.8.3\\python.exe"
        if os.path.exists(default):
            candidates.append(default)
    return candidates[0] if candidates else None

def create_venv():
    print("=" * 60)
    print("Creating Virtual Environment for Pulse ODMR Project")
    print("=" * 60)

    python_path = get_available_python()

    if not python_path:
        print("\nERROR: No Python interpreter found!")
        print("Please install Python 3.8+ or ensure Vivado 2020.2 is installed.")
        return False

    print(f"\nUsing Python: {python_path}")
    print(f"Virtual Environment: {VENV_DIR}")

    if os.path.exists(VENV_DIR):
        if FORCE_RECREATE:
            print(f"\nRemoving existing virtual environment: {VENV_DIR}")
            shutil.rmtree(VENV_DIR, ignore_errors=True)
        else:
            print(f"\nVirtual environment already exists: {VENV_DIR}")
            print("Use --force-recreate to recreate.")
            return True

    print("\nCreating virtual environment...")
    try:
        subprocess.run([python_path, "-m", "venv", VENV_DIR],
                       check=True, capture_output=True, text=True)
        print("Virtual environment created successfully!")
        return True
    except subprocess.CalledProcessError as e:
        print(f"Failed to create virtual environment: {e}")
        print(f"stderr: {e.stderr}")
        return False

def get_venv_python():
    venv_python = os.path.join(VENV_DIR, "Scripts", "python.exe")
    if os.path.exists(venv_python):
        return venv_python
    return os.path.join(VENV_DIR, "bin", "python")

def verify_venv():
    print("\nVerifying virtual environment...")
    venv_python = get_venv_python()

    if not os.path.exists(venv_python):
        print(f"ERROR: Python not found at {venv_python}")
        return False

    print(f"Python executable: {venv_python}")

    result = subprocess.run([venv_python, "--version"],
                           capture_output=True, text=True)
    if result.returncode == 0:
        print(f"Python version: {result.stdout.strip()}")
        return True
    else:
        print(f"ERROR: Failed to get Python version")
        return False

if __name__ == "__main__":
    if create_venv():
        if verify_venv():
            print("\n" + "=" * 60)
            print("Virtual environment created successfully!")
            print("=" * 60)
            sys.exit(0)

    print("\n" + "=" * 60)
    print("Failed to create virtual environment.")
    print("=" * 60)
    sys.exit(1)
