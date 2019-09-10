@echo off
set "timeout=2"
setlocal EnableDelayedExpansion
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
  set "DEL=%%a"
)

rem Prepare a file "X" with only one dot


:loop
FOR %%G IN (9,a,b,c,d,e) DO (
cls
for /f "delims=:[ tokens=*" %%A in ('findstr /b "::[" "%~f0"') do @call :color 0%%G "%%A"
for /f "delims=:] tokens=*" %%A in ('findstr /b "::]" "%~f0"') do @call :color 0c "%%A"
ping -n !timeout! 127.0.0.1 > nul
)
goto loop
exit /b

:color
<nul > X set /p ".=."
set "param=^%~2" !
set "param=!param:"=\"!"
findstr /p /A:%1 "." "!param!\..\X" nul
<nul set /p ".=%DEL%%DEL%%DEL%%DEL%%DEL%%DEL%%DEL%"
echo.
del /f /q X >nul 2>nul
exit /b

::[  _    _      _ _      
::[ | |  | |    | | |      
::[ | |__| |____| | | ___  
::[ |  __  |  _ | | || _ |
::[ | |  | |  __| | | (_) |
::[ |_|  |_|____|_|_||___|
::[    
::]   _____          _
::]  |  __ |        | |
::]  | |__) |___  __| |
::]  |  _  || _ || _` |
::]  | | | |  __| (_| |
::]  |_|  |_|___||__,_|
