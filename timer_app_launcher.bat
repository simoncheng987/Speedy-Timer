@echo off
set loopcount=5
:loop
echo do you still want to keep going
set /p times=
if %times%==-1 goto exitloop
set /a loopcount=loopcount-1
start timer_app.bat
if %loopcount%==0 goto exitloop
goto loop
:exitloop
pause


