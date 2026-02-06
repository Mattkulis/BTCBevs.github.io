@echo off
echo Starting web server on http://localhost:8080
echo Press Ctrl+C to stop the server
echo.
cd docs
python -m http.server 8080
pause
