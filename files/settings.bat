@echo off
setlocal enabledelayedexpansion
title Project Overcast - Settings

rem The game runs with forge\mcp\jars as its working directory, so that's where
rem it looks for player.properties. Players never need to know that.
set "CFGDIR=%~dp0forge\mcp\jars"
set "CFG=%CFGDIR%\player.properties"

set "CURNAME="
set "CURSKIN="
if exist "%CFG%" (
    for /f "usebackq tokens=1,* delims==" %%A in ("%CFG%") do (
        if /i "%%A"=="name" set "CURNAME=%%B"
        if /i "%%A"=="skin" set "CURSKIN=%%B"
    )
)

:menu
cls
echo ============================================
echo             PROJECT OVERCAST
echo                 Settings
echo ============================================
echo.
if defined CURNAME (echo   Name : !CURNAME!) else (echo   Name : ^(not set - you'll be PlayerNNN^))
if defined CURSKIN (echo   Skin : !CURSKIN!) else (echo   Skin : ^(not set - Steve^))
echo.
echo ============================================
echo.
echo   1. Change name
echo   2. Change skin
echo   3. Clear skin
echo   4. Save and exit
echo   5. Exit without saving
echo.
set "CHOICE="
set /p "CHOICE=Pick 1-5: "

if "%CHOICE%"=="1" goto setname
if "%CHOICE%"=="2" goto setskin
if "%CHOICE%"=="3" goto clearskin
if "%CHOICE%"=="4" goto save
if "%CHOICE%"=="5" goto :eof
goto menu

:setname
echo.
echo Letters, numbers and underscore only, up to 16 characters.
set "NEWNAME="
set /p "NEWNAME=New name: "
if defined NEWNAME set "CURNAME=%NEWNAME%"
goto menu

:setskin
echo.
echo Paste a DIRECT link to a skin image - it must end in .png and be the
echo image itself, not a page that shows it.
echo.
echo   Works : https://i.imgur.com/abc123.png
echo   Fails : https://imgur.com/abc123        ^(a web page^)
echo.
echo Any normal Minecraft skin image works - old 64x32, new 64x64, and
echo upscaled versions of either are all resized automatically. On a 64x64
echo skin the outer layer and the separate left arm/leg are dropped, because
echo this version of the game can't show them.
echo.
set "NEWSKIN="
set /p "NEWSKIN=Skin URL: "
if defined NEWSKIN set "CURSKIN=%NEWSKIN%"
goto menu

:clearskin
set "CURSKIN="
goto menu

:save
if not exist "%CFGDIR%" (
    echo.
    echo Could not find "%CFGDIR%".
    echo Keep settings.bat in the same folder as "Launch Project Overcast.bat".
    echo.
    pause
    goto :eof
)

rem Rewritten whole each time - it only ever holds these two values.
> "%CFG%" echo # Project Overcast player settings
>> "%CFG%" echo # Written by settings.bat. Run it again to change these.
>> "%CFG%" echo name=%CURNAME%
>> "%CFG%" echo skin=%CURSKIN%

echo.
echo Saved.
if defined CURNAME (echo   Name : %CURNAME%) else (echo   Name : not set)
if defined CURSKIN (echo   Skin : %CURSKIN%) else (echo   Skin : not set)
echo.
echo Takes effect next time you launch the game.
echo.
pause
endlocal
