::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCyDJGyX8VAjFB5TQxa+GGStCLkT6ezo077S9x9LBbJye4DczbyLJexe7UDlZ9sh12pOl9tBHx5MahulaTBl+z8R7zXLPsST0w==
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSjk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+IeA==
::cxY6rQJ7JhzQF1fEqQJhZksaHErSXA==
::ZQ05rAF9IBncCkqN+0xwdVsFAlTMbCXqZg==
::ZQ05rAF9IAHYFVzEqQICPQhADCuSKGK3D68Z+og=
::eg0/rx1wNQPfEVWB+kM9LVsJDDaXL3+VFqEV5eHh6vjJp1UYNA==
::fBEirQZwNQPfEVWB+kM9LVsJDDaXL3+VFqEV5eHh6vjn
::cRolqwZ3JBvQF1fEqQIDMQhASQnCE3uuD7gV8unv5uWJ4nkSW+5/foDJmoabM/Rz
::dhA7uBVwLU+EWFaC7Es1P3s=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATE100gMQldSwyWfMlzRudMur674Oyfq0gKNA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRmM4FYgO0EbAwOLKGOvBPsf5+W04Oyfq0gKG9Aqa5v0yqCHLekJ71eE
::Zh4grVQjdCyDJGyX8VAjFB5TQxa+GG6pDaET+NTJ+vmTjV0JXe82YorJlLGWJYA=
::YB416Ek+ZW8=
::
::
::978f952a14a936cc963da21a135fa983
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