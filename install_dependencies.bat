@echo off
echo ========================================
echo Installing Flutter Dependencies
echo ========================================
echo.

cd /d "%~dp0"
echo Current directory: %CD%
echo.

echo Running: flutter pub get
echo.
flutter pub get

echo.
echo ========================================
echo Installation Complete!
echo ========================================
echo.
echo Next steps:
echo 1. If the app is running, press 'R' (Hot Restart)
echo 2. Or run: flutter run
echo.
pause

