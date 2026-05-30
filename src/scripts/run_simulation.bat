@echo off
REM ==============================================================
REM Pulse_ODMR - Automated Simulation Batch Script
REM ==============================================================

echo.
echo ========================================
echo Pulse_ODMR - Automated Simulation
echo ========================================
echo.

REM ==============================================================
echo Step 1: Closing existing Vivado processes...
taskkill /F /IM vivado.exe 2>nul
taskkill /F /IM xvlog.exe 2>nul
taskkill /F /IM xelab.exe 2>nul
echo Done.
echo.

REM ==============================================================
echo Step 2: Checking required files...

set VIVADO_PATH=C:\Xilinx\Vivado\2020.2\bin\vivado.bat
set TCL_SCRIPT=c:\Users\user\Desktop\desktop_project\pulse_odmr\src\scripts\run_all_sim.tcl
set LOG_FILE=c:\Users\user\Desktop\desktop_project\pulse_odmr\src\project\simulation.log

if exist "%VIVADO_PATH%" (
    echo Found Vivado at: %VIVADO_PATH%
) else (
    echo ERROR: Vivado not found at: %VIVADO_PATH%
    pause
    exit /b 1
)

if exist "%TCL_SCRIPT%" (
    echo Found TCL script: %TCL_SCRIPT%
) else (
    echo ERROR: TCL script not found at: %TCL_SCRIPT%
    pause
    exit /b 1
)
echo.

REM ==============================================================
echo Step 3: Running Vivado simulation...
echo Script: %TCL_SCRIPT%
echo This may take several minutes...
echo.

cd /d c:\Users\user\Desktop\desktop_project\pulse_odmr\src\scripts

call "%VIVADO_PATH%" -mode batch -source "%TCL_SCRIPT%" -log "%LOG_FILE%" -nojournal

REM ==============================================================
echo.
echo ========================================
echo Simulation Results:
echo ========================================
echo.
if exist "%LOG_FILE%" (
    echo --- Last 50 lines of simulation log ---
    powershell -Command "Get-Content '%LOG_FILE%' -Tail 50"
    echo.
    echo --- Full log: %LOG_FILE% ---
) else (
    echo WARNING: Log file not found
)
echo.
echo ========================================
echo Done!
echo ========================================
echo.
pause
