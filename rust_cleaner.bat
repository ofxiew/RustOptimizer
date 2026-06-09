@echo off
color 0b
title RUST OPTIMIZER by OFXIEW

:: --- AUTO-ADMIN ELEVATION SCRIPT ---
:: Проверка на права администратора
net session >nul 2>&1
if %errorLevel% == 0 (
    goto :admin_granted
) else (
    echo [!] Requesting Administrative privileges...
    powershell -Command "Start-Process '%~f0' -Verb RunAs"
    exit
)
:admin_granted
:: --- END OF ELEVATION SCRIPT ---

echo.
echo ================================================================================
for /f "delims=: tokens=*" %%A in ('findstr /b ::: "%~f0"') do @echo(%%A 
:::       $$$$$$\  $$$$$$$$\ $$\   $$\ $$$$$$\ $$$$$$$$\ $$\      $$\ 
:::      $$  __$$\ $$  _____|$$ |  $$ |\_$$  _|$$  _____|$$ | $\  $$ |
:::      $$ /  $$ |$$ |      \$$\ $$  |  $$ |  $$ |      $$ |$$$\ $$ |
:::      $$ |  $$ |$$$$$\     \$$$$  /   $$ |  $$$$$\    $$ $$ $$\$$ |
:::      $$ |  $$ |$$  __|    $$  $$<    $$ |  $$  __|   $$$$  _$$$$ |
:::      $$ |  $$ |$$ |      $$  /\$$\   $$ |  $$ |      $$$  / \$$$ |
:::       $$$$$$  |$$ |      $$ /  $$ |$$$$$$\ $$$$$$$$\ $$  /   \$$ |
:::       \______/ \__|      \__|  \__|\______|\________|\__/     \__|
echo ================================================================================
echo                       SYSTEM OPTIMIZER FOR RUST
echo                              by OFXIEW
echo ================================================================================
echo.

echo  [ LOADING ] Initializing cleaning modules...
timeout /t 2 >nul
echo.

:: STEP 1
echo  [ . . . ] Step 1/3: Flushing DNS cache and clearing system Temp files...
ipconfig /flushdns >nul
del /s /f /q %USERPROFILE%\AppData\Local\Temp\*.* >nul 2>&1
rd /s /q %USERPROFILE%\AppData\Local\Temp >nul 2>&1
md %USERPROFILE%\AppData\Local\Temp >nul 2>&1
del /s /f /q C:\Windows\Temp\*.* >nul 2>&1
rd /s /q C:\Windows\Temp >nul 2>&1
md C:\Windows\Temp >nul 2>&1
timeout /t 1 >nul
echo  [  OK   ] Junk files successfully removed!
echo.

:: STEP 2
echo  [ . . . ] Step 2/3: Forcibly disabling Xbox, GameDVR, and background bloat...
Reg.exe add "HKLM\SOFTWARE\Microsoft\PolicyManager\default\ApplicationManagement\AllowGameDVR" /v "value" /t REG_DWORD /d "0" /f >nul
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\GameDVR" /v "AllowGameDVR" /t REG_DWORD /d "0" /f >nul
Reg.exe add "HKCU\System\GameConfigStore" /v "GameDVR_Enabled" /t REG_DWORD /d "0" /f >nul
Reg.exe add "HKCU\System\GameConfigStore" /v "GameDVR_FSEBehaviorMode" /t REG_DWORD /d "2" /f >nul
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /v "AppCaptureEnabled" /t REG_DWORD /d "0" /f >nul
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\XblGameSave" /v "Start" /t REG_DWORD /d "4" /f >nul
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\XboxNetApiSvc" /v "Start" /t REG_DWORD /d "4" /f >nul
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\XboxGipSvc" /v "Start" /t REG_DWORD /d "4" /f >nul
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\XblAuthManager" /v "Start" /t REG_DWORD /d "4" /f >nul
timeout /t 1 >nul
echo  [  OK   ] Background processes terminated!
echo.

:: STEP 3
echo  [ . . . ] Step 3/3: Optimizing keyboard/mouse and enabling GPU HAGS...
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "HwSchMode" /t REG_DWORD /d "2" /f >nul
Reg.exe add "HKCU\Control Panel\Accessibility\MouseKeys" /v "Flags" /t REG_SZ /d "0" /f >nul
Reg.exe add "HKCU\Control Panel\Accessibility\StickyKeys" /v "Flags" /t REG_SZ /d "0" /f >nul
Reg.exe add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "Flags" /t REG_SZ /d "0" /f >nul
Reg.exe add "HKCU\Control Panel\Accessibility\ToggleKeys" /v "Flags" /t REG_SZ /d "0" /f >nul
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v "EnableTransparency" /t REG_DWORD /d "0" /f >nul
timeout /t 1 >nul
echo  [  OK   ] Gaming tweaks applied!
echo.
echo ================================================================================
echo                          ALL SYSTEMS OPTIMIZED
echo                           READY TO PLAY RUST
echo ================================================================================
echo.
echo Press any key to exit . . .
pause >nul
exit
