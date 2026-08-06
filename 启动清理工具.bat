@echo off
chcp 65001 >nul 2>&1
setlocal
:: 以隐藏窗口方式启动 PowerShell GUI, 避免弹出控制台
powershell.exe -NoProfile -ExecutionPolicy Bypass -WindowStyle Hidden -File "%~dp0Windows_Cleaner_GUI.ps1"
endlocal
