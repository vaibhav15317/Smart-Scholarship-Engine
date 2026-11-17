@echo off
cd /d "%~dp0"
echo Starting Smart Scholarship Engine at http://localhost:8000
start "" http://localhost:8000
python server.py
pause
