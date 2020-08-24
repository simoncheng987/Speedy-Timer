@echo off
title timer
:while1
set /p timer=choose the start time=
set time=%timer%
:loop
cls
set /a time=%time%-1
if %time%==0 goto end
if %time% LEQ -1 shut_up.bat exit
echo %time% seconds
ping localhost -n 2 >nul
cls
goto loop
:end
cd ./sound
start /B alarm.bat
cd ..
goto :while1