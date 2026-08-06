@echo off
set "JAVA_HOME=%~dp0tools\jdk8u502-b07"
set "PATH=%JAVA_HOME%\bin;%PATH%"

rem Check for updates first. The updater always exits on its own, and fails open
rem if it can't reach the internet, so the game still starts either way.
rem
rem The trailing "." on the install path matters: %~dp0 always ends in a
rem backslash, and a backslash directly before a closing quote escapes the quote,
rem so "%~dp0" reached Java as a path with a stray " stuck on the end. The updater
rem then couldn't find updater.properties and silently skipped every update.
if exist "%~dp0updater\WebbiUpdater.jar" (
    "%JAVA_HOME%\bin\java.exe" -jar "%~dp0updater\WebbiUpdater.jar" "%~dp0."
)

cd /d "%~dp0forge\mcp"
runtime\bin\python\python_mcp.exe runtime\startclient.py
pause
