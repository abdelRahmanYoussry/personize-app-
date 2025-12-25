@echo off
echo ================================================
echo    App Icon Generator for Personality Quiz App
echo ================================================
echo.

echo Step 1: Installing dependencies...
call flutter pub get

echo.
echo Step 2: Generating app icons...
call dart run flutter_launcher_icons

echo.
echo ================================================
echo    Done! App icons have been generated.
echo ================================================
echo.
echo Android icons: android\app\src\main\res\mipmap-*
echo iOS icons: ios\Runner\Assets.xcassets\AppIcon.appiconset
echo.
echo If icons don't appear, try:
echo   1. flutter clean
echo   2. Rebuild the app
echo.
pause

