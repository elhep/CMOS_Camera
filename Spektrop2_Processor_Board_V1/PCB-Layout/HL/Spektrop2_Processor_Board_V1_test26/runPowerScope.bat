@echo off
set HYP_HOME=E:\MentorGraphics\9.4.2HL\SDD_HOME\hyperlynx
if EXIST %HYP_HOME%\TPScope.exe goto InstallDirFound

set KEYNAME=HKEY_CLASSES_ROOT\ffsfile\shell\open\command
REM Check for presence of key first.
reg query %KEYNAME% 2>nul || (echo HyperLynx is not installed! & exit /b 1)

for /f "tokens=3" %%a in ('reg query %KEYNAME% 2^>nul') do (
    set HYP_HOME=%%a
)
REM Remove bsw.exe
for /f %%i IN ("%HYP_HOME%") do (
	set HYP_HOME=%%~dpi
)

:InstallDirFound
echo %HYP_HOME%

set SCRIPT_DIR=%~dp0
cd %SCRIPT_DIR%\..
set RESULTS_DIR=%CD%

set TPSfile="%RESULTS_DIR%\%~1"

echo %HYP_HOME%\TPScope.exe %TPSfile% %2 %3
start "PowerScope" %HYP_HOME%\TPScope.exe %TPSfile% %2 %3
