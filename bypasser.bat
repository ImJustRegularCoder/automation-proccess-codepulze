@echo off
Title Mystific UWP Bypasser discord.gg/mystific
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo This script requires administrative privileges. Please run it as an administrator.
    pause
    exit /b 1
)
PowerShell -NoProfile -ExecutionPolicy Bypass -Command "Get-AppxPackage -AllUsers *Roblox* | ForEach-Object {Remove-AppxPackage -Package $_.PackageFullName -AllUsers}"
echo.
echo Uninstalling Roblox
echo.
goto sideloading


:sideloading
echo.
echo enableing sideloading
echo.
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModelUnlock" /t REG_DWORD /f /v "AllowAllTrustedApps" /d "1"
goto enabledevelopementmode


:enabledevelopementmode
echo.
echo enabling Developer Mode
echo.

REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModelUnlock" /t REG_DWORD /f /v "AllowDevelopmentWithoutDevLicense" /d "1"
goto xmlshit

:xmlshit
echo.
echo bypassing byfron
powershell -Command "Add-AppxPackage -Path 'C:\Users\%USERNAME%\Downloads\ROBLOX_2023.1004.2034.0\AppxManifest.xml' -Register"
echo.

pause
