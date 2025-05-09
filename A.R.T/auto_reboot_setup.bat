@echo off
title A.R.T
chcp 65001 >nul 2>&1
cls
echo  ▄▄▄·    ▄▄▄     ▄▄▄▄▄
echo ▐█ ▀█    ▀▄ █·   •██  
echo ▄█▀▀█    ▐▀▀▄     ▐█.▪
echo ▐█ ▪▐▌   ▐█•█▌    ▐█▌·
echo  ▀  ▀  ▀ .▀  ▀ ▀  ▀▀▀ 
timeout 3 >nul
cls
echo =============================
echo Choose your time format
echo =============================
echo [1] 12 hour clock
echo [2] 24 hour clock (military time)
set /p tfc=Time format: 
if "%tfc%"=="1" set tf=12
if "%tfc%"=="2" set tf=24

if "%tf%"=="12" echo Please include AM or PM and the colon
set /p rt=Enter time to reboot at : 

copy "C:\Users\samex\Desktop\scripts\A.R.T\auto_reboot.vbs" "C:\Users\samex\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup" >nul

echo @echo off > "C:\Users\samex\Desktop\scripts\auto_rebootaaa.bat"
echo :loop >> "C:\Users\samex\Desktop\scripts\auto_rebootaaa.bat"
echo for /f "tokens=1,2 delims= " %%A in ('time /t') do ( >> "C:\Users\samex\Desktop\scripts\auto_rebootaaa.bat"
echo     set "currentTime=%%A %%B" >> "C:\Users\samex\Desktop\scripts\auto_rebootaaa.bat"
echo ) >> "C:\Users\samex\Desktop\scripts\auto_rebootaaa.bat"
echo setlocal enabledelayedexpansion >> "C:\Users\samex\Desktop\scripts\auto_rebootaaa.bat"
echo if "!currentTime!"=="%rt%" ( >> "C:\Users\samex\Desktop\scripts\auto_rebootaaa.bat"
echo shutdown -r /t 0 /f >> "C:\Users\samex\Desktop\scripts\auto_rebootaaa.bat"
echo ) >> "C:\Users\samex\Desktop\scripts\auto_rebootaaa.bat"
echo timeout /t 60 >nul >> "C:\Users\samex\Desktop\scripts\auto_rebootaaa.bat"
echo goto loop >> "C:\Users\samex\Desktop\scripts\auto_rebootaaa.bat"
pause
