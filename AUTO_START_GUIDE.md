# Auto-Start Server Guide

This guide explains how to automatically start the backend server when running the Flutter frontend.

## Method 1: Automatic Server Start in Flutter (Recommended)

The Flutter app has been modified to automatically start the backend server when `main.dart` runs.

### How it works:
- When you run `flutter run`, the app will:
  1. Check if the server is already running on port 50051
  2. If not running, it will start the Python server automatically
  3. Wait for the server to be ready
  4. Then launch the Flutter UI

### To use:
```bash
cd frontend
flutter run
```

## Method 2: Shell Script (Alternative)

Use the provided shell script to start both backend and frontend together.

### To use:
```bash
# From the project root directory
./start_app.sh
```

### Features:
- Checks if server is already running
- Starts backend server in background
- Activates Python virtual environment if available
- Starts Flutter frontend
- Handles cleanup on exit (Ctrl+C)

## Method 3: VS Code Launch Configuration

Use VS Code's compound launch configuration to start both services.

### To use:
1. Open the project in VS Code
2. Go to Run and Debug (Ctrl+Shift+D)
3. Select "Launch Full App (Backend + Frontend)" from the dropdown
4. Click the play button

### Features:
- Starts backend server in integrated terminal
- Launches Flutter app with debugging
- Stops both services when debugging stops

## Prerequisites

For all methods to work properly:

1. **Python Environment**: Ensure Python 3 is installed and accessible via `python3`
2. **Dependencies**: Install Python dependencies:
   ```bash
   cd backend/python
   pip install -r requirements.txt
   ```
3. **Flutter**: Ensure Flutter is installed and in your PATH
4. **PostgreSQL**: Make sure PostgreSQL is running and accessible

## Troubleshooting

### Server fails to start:
- Check if Python dependencies are installed
- Verify PostgreSQL is running
- Check if port 50051 is available

### Flutter app can't connect:
- Ensure the server started successfully
- Check console output for error messages
- Verify the server is listening on localhost:50051

### Permission denied (Shell script):
```bash
chmod +x start_app.sh
```

## Manual Server Start (Fallback)

If automatic methods fail, you can still start manually:

```bash
# Terminal 1: Start backend
cd backend/python
python3 expense_tracker_server.py

# Terminal 2: Start frontend
cd frontend
flutter run
```

## Notes

- The automatic server start adds a 3-5 second delay to Flutter app startup
- Server processes are started in detached mode to avoid blocking
- The shell script provides the most control and error handling
- VS Code method is best for development with debugging capabilities