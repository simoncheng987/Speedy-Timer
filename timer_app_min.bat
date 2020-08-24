@echo off
title timer_min
set /A min_unit = 60
set /A curr_min = 0
set /A curr_sec = 0

:while1
set /p timer=choose the start time=
set time=%timer%
set /A time = %time%*%min_unit%
:loop
cls
set /a time=%time%-1
set /A curr_min = %time%/%min_unit%
set /A curr_sec = %time% %% %min_unit%
if %time%==0 goto end
if %time% LEQ -1 shut_up.bat exit
echo %curr_min% minutes %curr_sec% seconds
ping localhost -n 2 >nul
cls
goto loop
:end
cd ./sound
start /B alarm.bat
cd ..
goto :while1