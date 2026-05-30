@echo off
REM ==============================================================
REM Pulse_ODMR - Static Verification Batch Script
REM ==============================================================
setlocal enabledelayedexpansion

REM 配置路径
set SCRIPT_DIR=c:\Users\user\Desktop\desktop_project\pulse_odmr\src\scripts
set PROJECT_DIR=c:\Users\user\Desktop\desktop_project\pulse_odmr\src\project
set TCL_SCRIPT=%SCRIPT_DIR%\run_static_verify.tcl
set LOG_FILE=%PROJECT_DIR%\vivado.log
set REPORT_FILE=%PROJECT_DIR%\static_verify_report.rpt

REM Vivado 路径 - 根据你的实际安装路径修改
set VIVADO_PATH=C:\Xilinx\Vivado\2020.2\bin\vivado.bat

REM ==============================================================
echo.
echo ========================================
echo Pulse_ODMR - Static Verification
echo ========================================
echo.

REM ==============================================================
echo Step 1: Closing existing Vivado processes...
REM 尝试关闭可能正在运行的Vivado进程（安全做法）
taskkill /F /IM vivado.exe 2>nul
taskkill /F /IM xvlog.exe 2>nul
taskkill /F /IM xelab.exe 2>nul
echo Done.
echo.

REM ==============================================================
echo Step 2: Checking Vivado path...
if exist "%VIVADO_PATH%" (
    echo Found Vivado at: %VIVADO_PATH%
) else (
    echo ERROR: Vivado not found at: %VIVADO_PATH%
    echo Please update VIVADO_PATH in this script to match your installation.
    pause
    exit /b 1
)
echo.

REM ==============================================================
echo Step 3: Running Vivado in batch mode...
echo Script: %TCL_SCRIPT%
echo This may take a few minutes...
echo.

REM 进入脚本目录并运行
cd /d %SCRIPT_DIR%

REM 运行Vivado批处理模式 - 使用完整路径
call "%VIVADO_PATH%" -mode batch -source "%TCL_SCRIPT%" -log "%LOG_FILE%" -journal "%PROJECT_DIR%\vivado.jou"

REM ==============================================================
echo.
echo ========================================
echo Step 4: Reading Vivado Log
echo ========================================
echo Log file: %LOG_FILE%
echo.

if exist "%LOG_FILE%" (
    echo.
    echo --- Last 100 lines of Vivado Log ---
    powershell -Command "Get-Content '%LOG_FILE%' -Tail 100"
    echo.
    echo --- End of Log ---
) else (
    echo WARNING: Log file not found!
)

REM ==============================================================
echo.
echo ========================================
echo Step 5: Verification Report
echo ========================================
echo Report file: %REPORT_FILE%
echo.

if exist "%REPORT_FILE%" (
    echo.
    type "%REPORT_FILE%"
) else (
    echo WARNING: Report file not found!
)

REM ==============================================================
echo.
echo ========================================
echo Done!
echo ========================================
echo.
echo Files created:
echo   - Log: %LOG_FILE%
echo   - Report: %REPORT_FILE%
echo.
pause
