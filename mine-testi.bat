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
echo Liigun testkeskkonda...
git checkout test
git merge main --no-edit
git push test test:main
git checkout main

echo.
echo Valmis! Vaata testkeskkonda paari minuti parast:
echo https://katrinkreutzbergfitness.github.io/koduleht-test/
echo.
pause
