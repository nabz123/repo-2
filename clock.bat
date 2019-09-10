@echo off
setlocal EnableDelayedExpansion

for /L %%i in () do (
cls
echo/
echo ======
echo !DATE!
echo !TIME!
echo ======
timeout -t 1 > nul
)
