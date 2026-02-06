# Simple script to start the web server
Write-Host "Starting web server on http://localhost:8080" -ForegroundColor Green
Write-Host "Press Ctrl+C to stop the server" -ForegroundColor Yellow
Write-Host ""
cd docs
python -m http.server 8080
