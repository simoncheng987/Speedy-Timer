@echo off
title timer
set /p timer=choose the start time=
set time=%timer%
:loop
cls
set /a time=%time%-1
if %time%==0 goto end
echo %time% seconds
ping localhost -n 2 >nul
cls
goto loop
:end
echo Time is out
pause