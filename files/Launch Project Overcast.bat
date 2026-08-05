@echo off
set "JAVA_HOME=%~dp0tools\jdk8u502-b07"
set "PATH=%JAVA_HOME%\bin;%PATH%"

rem Check for updates first. The updater always exits on its own, and fails open
rem if it can't reach the internet, so the game still starts either way.
if exist "%~dp0updater\WebbiUpdater.jar" (
    "%JAVA_HOME%\bin\java.exe" -jar "%~dp0updater\WebbiUpdater.jar" "%~dp0"
)

cd /d "%~dp0forge\mcp"
runtime\bin\python\python_mcp.exe runtime\startclient.py
pause
