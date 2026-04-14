@echo off
title SmartLabManager - by Jacob
chcp 65001 > nul
call :banner
call :menu


:banner
echo.
echo.
echo                        [38;2;147;112;219m███████╗██╗   ██╗███████╗████████╗███████╗███╗   ███╗    ███╗   ███╗ █████╗ ██╗███╗   ██╗████████╗███████╗███╗   ██╗ █████╗ ███╗   ██╗ ██████╗███████╗[0m    
echo                        [38;2;118;140;230m██╔════╝╚██╗ ██╔╝██╔════╝╚══██╔══╝██╔════╝████╗ ████║    ████╗ ████║██╔══██╗██║████╗  ██║╚══██╔══╝██╔════╝████╗  ██║██╔══██╗████╗  ██║██╔════╝██╔════╝[0m    
echo                        [38;2;88;168;240m███████╗ ╚████╔╝ ███████╗   ██║   █████╗  ██╔████╔██║    ██╔████╔██║███████║██║██╔██╗ ██║   ██║   █████╗  ██╔██╗ ██║███████║██╔██╗ ██║██║     █████╗[0m      
echo                        [38;2;59;196;248m╚════██║  ╚██╔╝  ╚════██║   ██║   ██╔══╝  ██║╚██╔╝██║    ██║╚██╔╝██║██╔══██║██║██║╚██╗██║   ██║   ██╔══╝  ██║╚██╗██║██╔══██║██║╚██╗██║██║     ██╔══╝[0m      
echo                        [38;2;29;226;252m███████║   ██║   ███████║   ██║   ███████╗██║ ╚═╝ ██║    ██║ ╚═╝ ██║██║  ██║██║██║ ╚████║   ██║   ███████╗██║ ╚████║██║  ██║██║ ╚████║╚██████╗███████╗[0m    
echo                        [38;2;0;255;255m╚══════╝   ╚═╝   ╚══════╝   ╚═╝   ╚══════╝╚═╝     ╚═╝    ╚═╝     ╚═╝╚═╝  ╚═╝╚═╝╚═╝  ╚═══╝   ╚═╝   ╚══════╝╚═╝  ╚═══╝╚═╝  ╚═╝╚═╝  ╚═══╝ ╚═════╝╚══════╝[0m    
echo.
echo.


:menu
echo ==================================================
echo              SmartLabManager - Main Menu
echo ==================================================
echo [1] Close Applications
echo [2] Clear Browser Cache
echo [3] Delete Temporary Files
echo [4] Perform System Scan
echo [5] Shutdown
echo [6] Perform All Tasks
echo [7] Exit
echo ==================================================
choice /c 1234567 /n /m "Select an option: "

if errorlevel 7 goto exit
if errorlevel 6 goto alltasks
if errorlevel 5 goto shutdown
if errorlevel 4 goto scan
if errorlevel 3 goto temp
if errorlevel 2 goto clearcache
if errorlevel 1 goto closeapps

:closeapps
rem === Your existing close applications section ===
echo Closing Applications...
taskkill /F /IM chrome.exe 
timeout /t 2 > nul
echo.

taskkill /F /IM msedge.exe 
timeout /t 2 > nul
echo.

taskkill /F /IM firefox.exe 
timeout /t 2 > nul
echo.

taskkill /F /IM brave.exe 
timeout /t 2 > nul
echo.

taskkill /F /IM notepad++.exe 
timeout /t 2 > nul
echo.

taskkill /F /IM Code.exe 
timeout /t 2 > nul
echo.

taskkill /f /im winword.exe
timeout /t 2 > nul
echo.

taskkill /f /im powerpnt.exe
timeout /t 2 > nul
echo.

taskkill /f /im excel.exe
timeout /t 2 > nul
echo.

taskkill /f /im MSPUB.exe
timeout /t 2 > nul
echo.

taskkill /f /im visio.exe
timeout /t 2 > nul
echo.

taskkill /f /im msaccess.exe
timeout /t 2 > nul
echo.

taskkill /f /im onenote.exe
timeout /t 2 > nul
echo.

taskkill /f /im lync.exe
timeout /t 2 > nul
echo.
pause
cls
goto banner
goto menu

:clearcache
rem === Your existing clear browser cache section ===
echo Clearing Browser Cache...
rd /s /q "%localappdata%\Google\Chrome\User Data\Default\Cache"
timeout /t 2 > nul
echo.

rd /s /q "%localappdata%\Microsoft\Edge\User Data\Default\Cache"
timeout /t 2 > nul
echo.

rd /s /q "%appdata%\Mozilla\Firefox\Profiles\*.default-release\cache2"
timeout /t 2 > nul
echo.

rd /s /q "%localappdata%\BraveSoftware\Brave-Browser\User Data\Default\Cache"
timeout /t 2 > nul
echo.

rd /s /q "%appdata%\Notepad++\cache"
timeout /t 2 > nul
echo.

rd /s /q "%appdata%\Code\Cache"
timeout /t 2 > nul
echo.

rd /s /q "%localappdata%\Microsoft\Windows\Explorer\thumbcache_*.db"
timeout /t 2 > nul
echo.
pause
cls
goto banner
goto menu

:temp
rem === Your existing delete temp files section ===
echo Deleting Temporary Files...
del /q /f /s %temp%\*
timeout /t 2 > nul
echo.

del /q /f /s %temp%\* C:\Windows\temp\*
timeout /t 2 > nul
echo.
pause
cls
goto banner
goto menu

:scan
rem === Your existing system scan section ===
echo Performing System Scan...
timeout /t 2 > nul
sfc /scannow
echo.
pause
cls
goto banner
goto menu

:shutdown
rem === Your existing shutdown section ===
echo Shutting down...
timeout /t 3 > nul
shutdown /s /t 3
pause
cls
goto banner
goto menu

:alltasks
call :closeapps
call :clearcache
call :temp
call :scan
call :shutdown
echo.
echo All tasks completed successfully.
pause
cls
goto banner
goto menu

:exit
echo Exiting SmartLabManager...
exit /b
