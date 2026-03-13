@echo off
chcp 65001 >nul
title FGO自动化脚本
echo ==========================================
echo           FGO自动化脚本
echo ==========================================
echo.

:: 检查Python是否安装
py --version >nul 2>&1
if errorlevel 1 (
    python --version >nul 2>&1
    if errorlevel 1 (
        echo [错误] 未检测到Python，请安装Python 3.6+
        pause
        exit /b 1
    ) else (
        set PYTHON_CMD=python
    )
) else (
    set PYTHON_CMD=py
)

:: 执行脚本
echo 正在启动自动化流程...
echo.
cd /d "%~dp0"
%PYTHON_CMD% fgo_bot.py

echo.
echo ==========================================
echo 脚本执行完毕
pause
