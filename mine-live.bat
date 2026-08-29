@echo off
setlocal enabledelayedexpansion

for /f "delims=" %%i in ('git status --porcelain') do set DIRTY=1
if defined DIRTY (
    echo.
    echo Sul on salvestamata muudatusi!
    echo Tee enne "git add -A" ja "git commit" oma muudatustele.
    echo.
    pause
    exit /b 1
)

echo.
echo See paneb saidi kohe LIVE'i katrinkreutzberg.ee peale.
set /p KINNITUS="Oled testkeskkonnas selle uleva kontrollinud ja heaks kiitnud? (jah/ei): "
if /i not "%KINNITUS%"=="jah" (
    echo Katkestatud.
    pause
    exit /b 0
)

echo.
echo Liigun live'i...
git push origin main

echo.
echo Valmis! Vaata live: https://katrinkreutzberg.ee
echo.
pause
