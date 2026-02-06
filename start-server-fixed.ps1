# Fixed Server Startup Script
Write-Host "Starting web server..." -ForegroundColor Green
Write-Host ""

# Change to docs directory
Set-Location -Path "$PSScriptRoot\docs"

# Check if port 8080 is in use
$portInUse = Get-NetTCPConnection -LocalPort 8080 -ErrorAction SilentlyContinue
if ($portInUse) {
    Write-Host "Port 8080 is already in use. Trying to free it..." -ForegroundColor Yellow
    $processes = Get-NetTCPConnection -LocalPort 8080 -ErrorAction SilentlyContinue | Select-Object -ExpandProperty OwningProcess -Unique
    foreach ($proc in $processes) {
        Stop-Process -Id $proc -Force -ErrorAction SilentlyContinue
    }
    Start-Sleep -Seconds 1
}

Write-Host "Server starting on http://localhost:8080" -ForegroundColor Cyan
Write-Host "Press Ctrl+C to stop the server" -ForegroundColor Yellow
Write-Host ""

# Start the server
python -m http.server 8080
