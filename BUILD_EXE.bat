@echo off
echo ====================================
echo  Build LoL AutoAccept GUI .exe
echo ====================================
echo.
echo [1] Kiem tra Python...
python --version
if %errorlevel% neq 0 (
    echo [!] Chua co Python! Tai tai: https://python.org
    pause & exit
)
echo.
echo [2] Cai thu vien...
pip install pyinstaller psutil requests PyQt6
echo.
echo [3] Build .exe (no console)...
pyinstaller --onefile --noconsole --name "LOL Auto Matchmaking" --icon "images/title-logo.ico" ^
  --add-data "images;images" ^
  --add-data "fonts;fonts" ^
  auto_accept_lol.py
echo.
echo [OK] Xong! File .exe: dist\LoL_AutoAccept.exe
echo.
pause
