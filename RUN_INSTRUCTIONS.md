# How to Run Bitcoin Beverage Co. Website

## Quick Start (Easiest Method)

### Method 1: Double-Click the Batch File
1. Navigate to the project folder: `C:\Users\User\Desktop\mkoolass.github.io`
2. Double-click `start-server.bat`
3. A window will open showing the server status
4. Open your browser and go to: **http://localhost:8080**

### Method 2: Python HTTP Server (Manual)
1. Open PowerShell or Command Prompt
2. Navigate to the project folder:
   ```powershell
   cd C:\Users\User\Desktop\mkoolass.github.io\docs
   ```
3. Start the server:
   ```powershell
   python -m http.server 8080
   ```
4. Open your browser and go to: **http://localhost:8080**
5. Press `Ctrl+C` to stop the server when done

### Method 3: Open Directly in Browser
1. Navigate to: `C:\Users\User\Desktop\mkoolass.github.io\docs\`
2. Double-click `index.html`
3. The page will open in your default browser

**Note:** Method 3 works but some features (like smooth scrolling) work better with a local server.

## Troubleshooting

### Port Already in Use
If port 8080 is busy, use a different port:
```powershell
python -m http.server 8080
```
Then visit: `http://localhost:8080`

### Python Not Found
If you get "python is not recognized":
- Try `python3` instead of `python`
- Or install Python from python.org

### Browser Not Loading
- Make sure the server is running (you should see output in the terminal)
- Try a different browser (Chrome, Firefox, Edge)
- Check Windows Firewall settings
- Try `http://127.0.0.1:8080` instead of `localhost:8080`

## Viewing Changes

After making changes to files:
1. Save the file
2. Refresh your browser (F5 or Ctrl+R)
3. For CSS changes, you may need to hard refresh (Ctrl+F5 or Ctrl+Shift+R)

## Stopping the Server

- If using the batch file: Close the window
- If using PowerShell/Command Prompt: Press `Ctrl+C`
