@echo off
title A.R.T
chcp 65001 >nul 2>&1
cls

echo  ▄▄▄·    ▄▄▄     ▄▄▄     ▄▄▄▄▄
echo ▐█ ▀█    ▀▄ █·   ▀▄ █·   •██  
echo ▄█▀▀█    ▐▀▀▄    ▐▀▀▄     ▐█.▪
echo ▐█ ▪▐▌   ▐█•█▌   ▐█•█▌    ▐█▌·
echo  ▀  ▀  ▀ .▀  ▀ ▀ .▀  ▀ ▀  ▀▀▀ 

timeout 3 >nul
cls
set /p choice=Are you sure you want to delete A.R.T ? (y/n) : 
if "%choice%"=="y" del "C:\Users\samex\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\auto_reboot.vbs" 
pause