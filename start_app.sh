#!/bin/bash

# Check if PostgreSQL is running, and start it if not (for Homebrew installations)
if ! pg_isready -q; then
  echo "PostgreSQL is not running. Attempting to start..."
  brew services start postgresql
  # Wait a few seconds for PostgreSQL to start
  sleep 3
else
  echo -e "PostgreSQL is already running.\n"
fi

# Expense Tracker Startup Script
# This script starts both the backend server and Flutter frontend

echo -e "Starting Expense Tracker...\n"

# Function to check if server is running
check_server() {
    nc -z localhost 50051 >/dev/null 2>&1
    return $?
}

# Function to start backend server
start_backend() {
    echo "Starting backend server..."
    cd backend/python
    
    # Check if virtual environment exists and activate it
    if [ -d "venv" ]; then
        source venv/bin/activate
        echo "Activated virtual environment"
    fi
    
    # Start the server in background
    python3 expense_tracker_server.py &
    BACKEND_PID=$!
    echo "Backend server started with PID: $BACKEND_PID"
    
    # Wait for server to start
    echo "Waiting for server to start..."
    for i in {1..10}; do
        if check_server; then
            echo "Backend server is running!"
            break
        fi
        echo "Waiting... ($i/10)"
        sleep 1
    done
    
    if ! check_server; then
        echo "Failed to start backend server"
        exit 1
    fi
    
    cd ../..
}

# Function to start frontend
start_frontend() {
    echo -e "Starting Flutter frontend...\n"
    cd frontend
    flutter run
}

# Function to cleanup on exit
cleanup() {
    echo -e "\nShutting down..."
    if [ ! -z "$BACKEND_PID" ]; then
        echo "Stopping backend server (PID: $BACKEND_PID)"
        kill $BACKEND_PID 2>/dev/null
    fi
    
    # Kill any remaining Python processes running the server
    pkill -f "expense_tracker_server.py" 2>/dev/null
    
    echo "Cleanup complete"
    exit 0
}

# Set up signal handlers
trap cleanup SIGINT SIGTERM

# Check if server is already running
if check_server; then
    echo "Backend server is already running"
else
    start_backend
fi

# Start frontend
start_frontend

# Keep script running
wait