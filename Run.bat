@ for /f "delims=[] tokens=2" %%a in ('ping -4 -n 1 %ComputerName% ^| findstr [') do @ set NetworkIP=%%a
@ set Disp="%NetworkIP%:0.0"

@ set TIMESTAMP=%DATE:~6,4%_%DATE:~3,2%_%DATE:~0,2%__%TIME:~0,2%_%TIME:~3,2%_%TIME:~6,2%
@ set TIMESTAMP=%TIMESTAMP: =0%
@ set TIMESTAMP=%TIMESTAMP:_=%
@ set title=Run-%TIMESTAMP%

@ mkdir %title%
@ cd %title%

docker run -i -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=%Disp% -e systemOS=win --mount type=bind,source=%cd%,target=/srv/actom-run/input actomtoolbox/actom-run

 .\Run-All.bat
