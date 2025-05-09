@echo off
:loop
for /f "tokens=1,2 delims= " %%A in ('time /t') do (
    set "currentTime=%%A %%B"
)
setlocal enabledelayedexpansion
if "!currentTime!"=="7:00 AM" (
shutdown -r /t 0 /f 
)
timeout /t 60 >nul
goto loop

