e@echo off
setlocal EnableDelayedExpansion
set "timeout=2"
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
  set "DEL=%%a"
)
:loop
FOR %%G IN (9,a,b,c,d,e) DO (
::[WELCOME 
::[TO
::]GITLAB
cls
for /f "delims=:[ tokens=*" %%A in ('findstr /b "::[" "%~f0"') do @call :ColorText 0%%G "%%A"
for /f "delims=:] tokens=*" %%A in ('findstr /b "::]" "%~f0"') do @call :ColorText 0c "%%A"
ping -n !timeout! 127.0.0.1 > nul
)
goto loop

:ColorText
echo off
<nul set /p ".=%DEL%" > "%~2"
findstr /v /a:%1 /R "^$" "%~2" nul
del "%~2" > nul 2>&1
echo.
goto :eof
