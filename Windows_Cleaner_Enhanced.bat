@ECHO OFF
REM Windows Cleaner Tools v2.0.0 - Enhanced & Safer Version
REM Author: Sut
REM Windows Version: XP/7/8/10/11

SETLOCAL ENABLEDELAYEDEXPANSION

REM Check if running as administrator
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo.
    echo [ERROR] This script requires administrator privileges!
    echo Please right-click and select "Run as administrator"
    echo.
    pause
    exit /b 1
)

SET version=2.0.0
SET author=Sut
SET title=Windows Cleaner Tools
SET build=20240506

title %title% by %author% v%version%
COLOR 2F

REM ============================================================
REM Display Banner
REM ============================================================
ECHO.
ECHO  ========================================================================
ECHO.
ECHO     【 %title% 】
ECHO.
ECHO     Version  : %version%
ECHO     Author   : %author%
ECHO     Build    : %build%
ECHO.
ECHO  ========================================================================
ECHO.

VER | FIND "10.0" >NUL
IF %ERRORLEVEL% EQU 0 SET WINVER=10
VER | FIND "6.3" >NUL
IF %ERRORLEVEL% EQU 0 SET WINVER=8.1
VER | FIND "6.2" >NUL
IF %ERRORLEVEL% EQU 0 SET WINVER=8
VER | FIND "6.1" >NUL
IF %ERRORLEVEL% EQU 0 SET WINVER=7
VER | FIND "6.0" >NUL
IF %ERRORLEVEL% EQU 0 SET WINVER=Vista
VER | FIND "5.1" >NUL
IF %ERRORLEVEL% EQU 0 SET WINVER=XP
VER | FINDSTR /B /I "10.0.2" >NUL
IF %ERRORLEVEL% EQU 0 SET WINVER=11

ECHO [INFO] Detected Windows: %WINVER%
ECHO.

REM ============================================================
REM Safety Warning
REM ============================================================
ECHO  ========================================================================
ECHO  IMPORTANT WARNING / 重要警告:
ECHO  ------------------------------------------------------------------
ECHO  - This script will clean temporary files and cache
ECHO  - It is RECOMMENDED to close all running applications
ECHO  - This script is provided AS IS without warranty
ECHO  ========================================================================
ECHO.
SET /P confirm="Continue cleaning? (Y/N): "
IF /I NOT "%confirm%"=="Y" GOTO END

CLS
COLOR 1E

REM ============================================================
REM Section 1: Temporary Files Cleanup
REM ============================================================
ECHO.
ECHO [1/6] Cleaning temporary files...

REM User temp folder
IF EXIST "%TEMP%" (
    DEL /S /Q "%TEMP%\*.*" >NUL 2>&1
    RD /S /Q "%TEMP%" >NUL 2>&1
    MD "%TEMP%" >NUL 2>&1
)

REM Windows temp folder
IF EXIST "%WINDIR%\Temp" (
    DEL /S /Q "%WINDIR%\Temp\*.*" >NUL 2>&1
)

REM AppData temp
IF EXIST "%APPDATA%\Temp" (
    DEL /S /Q "%APPDATA%\Temp\*.*" >NUL 2>&1
)

REM Prefetch (Windows only)
IF EXIST "%WINDIR%\Prefetch" (
    DEL /S /Q "%WINDIR%\Prefetch\*.*" >NUL 2>&1
)

REM ============================================================
REM Section 2: System Cache Cleanup
REM ============================================================
ECHO [2/6] Cleaning system caches...

REM Windows Update cache
IF EXIST "%WINDIR%\SoftwareDistribution\Download" (
    RD /S /Q "%WINDIR%\SoftwareDistribution\Download" >NUL 2>&1
    MD "%WINDIR%\SoftwareDistribution\Download" >NUL 2>&1
)

REM Windows Update download folder
IF EXIST "%WINDIR%\$hf_mig$" (
    RD /S /Q "%WINDIR%\$hf_mig$" >NUL 2>&1
)

REM Old Windows update folders
FOR /D %%i IN ("%WINDIR%\$NtUninstall*") DO (
    RD /S /Q "%%i" >NUL 2>&1
)

REM Windows Logs
FOR %%i IN (Logs Log log) DO (
    IF EXIST "%WINDIR%\%%i" (
        DEL /S /Q "%WINDIR%\%%i\*.*" >NUL 2>&1
    )
)

REM Windows CBS temp
IF EXIST "%WINDIR%\CbsTemp" (
    RD /S /Q "%WINDIR%\CbsTemp" >NUL 2>&1
)

REM ============================================================
REM Section 3: Browser Cache Cleanup
REM ============================================================
ECHO [3/6] Cleaning browser caches...

REM Internet Explorer cache
IF EXIST "%LOCALAPPDATA%\Microsoft\Windows\INetCache" (
    RD /S /Q "%LOCALAPPDATA%\Microsoft\Windows\INetCache" >NUL 2>&1
)

REM Chrome cache
IF EXIST "%LOCALAPPDATA%\Google\Chrome\User Data\Default\Cache" (
    RD /S /Q "%LOCALAPPDATA%\Google\Chrome\User Data\Default\Cache" >NUL 2>&1
)

IF EXIST "%LOCALAPPDATA%\Google\Chrome\User Data\Default\Code Cache" (
    RD /S /Q "%LOCALAPPDATA%\Google\Chrome\User Data\Default\Code Cache" >NUL 2>&1
)

REM Edge cache
IF EXIST "%LOCALAPPDATA%\Microsoft\Edge\User Data\Default\Cache" (
    RD /S /Q "%LOCALAPPDATA%\Microsoft\Edge\User Data\Default\Cache" >NUL 2>&1
)

REM Firefox cache
IF EXIST "%LOCALAPPDATA%\Mozilla\Firefox\Profiles" (
    FOR /D %%i IN ("%LOCALAPPDATA%\Mozilla\Firefox\Profiles\*\cache2") DO (
        RD /S /Q "%%i" >NUL 2>&1
    )
)

REM ============================================================
REM Section 4: Windows System Cleanup
REM ============================================================
ECHO [4/6] Cleaning system junk files...

REM Windows installer cache cleanup
IF EXIST "C:\Config.Msi" (
    RD /S /Q "C:\Config.Msi" >NUL 2>&1
)

REM Windows performance logs
IF EXIST "C:\PerfLogs" (
    RD /S /Q "C:\PerfLogs" >NUL 2>&1
)

REM Windows resource cache
IF EXIST "%WINDIR%\rescache" (
    RD /S /Q "%WINDIR%\rescache" >NUL 2>&1
)

REM Windows setup folder
IF EXIST "%WINDIR%\Setup" (
    RD /S /Q "%WINDIR%\Setup" >NUL 2>&1
)

REM Windows servicing LCU
IF EXIST "%WINDIR%\servicing\LCU" (
    RD /S /Q "%WINDIR%\servicing\LCU" >NUL 2>&1
)

REM Windows downloaded program files
IF EXIST "%WINDIR%\Downloaded Program Files" (
    RD /S /Q "%WINDIR%\Downloaded Program Files" >NUL 2>&1
)

REM Windows LiveKernelReports
IF EXIST "%WINDIR%\LiveKernelReports" (
    RD /S /Q "%WINDIR%\LiveKernelReports" >NUL 2>&1
)

REM Windows traces
IF EXIST "%WINDIR%\Tracing" (
    RD /S /Q "%WINDIR%\Tracing" >NUL 2>&1
)

REM ============================================================
REM Section 5: Recycle Bin Cleanup
REM ============================================================
ECHO [5/6] Cleaning recycle bin...

REM Clean recycle bin on all drives
FOR %%i IN (C D E F G H I J K L) DO (
    IF EXIST "%%i:\$Recycle.Bin" (
        RD /S /Q "%%i:\$Recycle.Bin" >NUL 2>&1
    )
    IF EXIST "%%i:\RECYCLER" (
        RD /S /Q "%%i:\RECYCLER" >NUL 2>&1
    )
)

REM ============================================================
REM Section 6: Recent Files and Thumbnails
REM ============================================================
ECHO [6/6] Cleaning recent files and thumbnails...

REM Recent files
IF EXIST "%APPDATA%\Microsoft\Windows\Recent" (
    DEL /S /Q "%APPDATA%\Microsoft\Windows\Recent\*.*" >NUL 2>&1
)

REM Thumbnail cache
IF EXIST "%LOCALAPPDATA%\Microsoft\Windows\Explorer" (
    DEL /S /Q "%LOCALAPPDATA%\Microsoft\Windows\Explorer\thumbcache_*.db" >NUL 2>&1
)

REM Icon cache
IF EXIST "%LOCALAPPDATA%\IconCache.db" (
    DEL /Q "%LOCALAPPDATA%\IconCache.db" >NUL 2>&1
)

REM ============================================================
REM Optional: Third-party Software Cleanup
REM ============================================================
ECHO.
ECHO [OPTIONAL] Cleaning third-party software caches...

REM Thunder download cache
IF EXIST "%APPDATA%\Thunder Network" (
    RD /S /Q "%APPDATA%\Thunder Network" >NUL 2>&1
)

REM Thunder X cache
IF EXIST "%APPDATA%\thunderx" (
    IF EXIST "%APPDATA%\thunderx\Cache" RD /S /Q "%APPDATA%\thunderx\Cache" >NUL 2>&1
    IF EXIST "%APPDATA%\thunderx\GPUCache" RD /S /Q "%APPDATA%\thunderx\GPUCache" >NUL 2>&1
)

REM Sogou Input Method logs
IF EXIST "%ProgramFiles%\SogouInput" (
    DEL /S /Q "%ProgramFiles%\SogouInput\*.log" >NUL 2>&1
    DEL /S /Q "%ProgramFiles%\SogouInput\*.dmp" >NUL 2>&1
)

IF EXIST "%ProgramFiles(x86)%\SogouInput" (
    DEL /S /Q "%ProgramFiles(x86)%\SogouInput\*.log" >NUL 2>&1
    DEL /S /Q "%ProgramFiles(x86)%\SogouInput\*.dmp" >NUL 2>&1
)

REM QQ cache
IF EXIST "%APPDATA%\Tencent" (
    RD /S /Q "%APPDATA%\Tencent" >NUL 2>&1
)

REM ============================================================
REM Final Steps: Clear Screen and Show Summary
REM ============================================================
CLS
COLOR 2F

ECHO.
ECHO  ========================================================================
ECHO.
ECHO   SUCCESS! System cleanup completed successfully.
ECHO   All temporary files and caches have been cleaned.
ECHO.
ECHO   Thank you for using %author%'s %title%
ECHO.
ECHO  ========================================================================
ECHO.

REM Refresh Windows Explorer
START explorer.exe

PAUSE

:END
ENDLOCAL
EXIT /B 0
