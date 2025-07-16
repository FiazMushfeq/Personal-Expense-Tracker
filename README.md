# Personal Expense Tracker

A full-stack expense tracking application built with Flutter frontend and Python gRPC backend, using PostgreSQL for data persistence.

## 🏗️ Architecture

- **Frontend**: Flutter (Dart) - Cross-platform mobile and desktop UI
- **Backend**: Python gRPC server - High-performance API service
- **Database**: PostgreSQL - Reliable data storage
- **Communication**: gRPC protocol for efficient client-server communication

## 📁 Project Structure

```
Personal-Expense-Tracker/
├── frontend/                 # Flutter application
│   ├── lib/
│   │   ├── main.dart        # App entry point with auto-server startup
│   │   ├── pages/           # UI screens
│   │   ├── forms/           # Input forms
│   │   ├── services/        # gRPC client services
│   │   └── generated/       # Generated gRPC code
│   └── .vscode/
│       └── launch.json      # VS Code debug configurations
├── backend/
│   └── python/
│       ├── expense_tracker_server.py  # gRPC server
│       ├── database.py      # PostgreSQL connection
│       ├── generated/       # Generated gRPC code
│       ├── requirements.txt # Python dependencies
│       └── venv/           # Virtual environment
├── schema/
│   └── expense.proto       # gRPC service definitions
├── start_app.sh           # Automated startup script
└── AUTO_START_GUIDE.md    # Detailed startup instructions
```

## 🚀 Quick Start

### Prerequisites

1. **PostgreSQL** - Database server
   ```bash
   # Install PostgreSQL (macOS)
   brew install postgresql
   brew services start postgresql
   ```

2. **Python 3.8+** with virtual environment
   ```bash
   python3 --version
   ```

3. **Flutter SDK**
   ```bash
   flutter --version
   ```

### Database Setup

1. Create PostgreSQL database:
   ```sql
   CREATE DATABASE postgres;
   CREATE USER postgres WITH PASSWORD 'your_secure_password';
   GRANT ALL PRIVILEGES ON DATABASE postgres TO postgres;
   ```

2. Verify connection:
   ```bash
   pg_isready -h localhost -p 5432
   ```

### Security Setup

1. Copy the environment template:
   ```bash
   cp .env.example .env
   ```

2. Update `.env` with your actual database credentials:
   ```bash
   # Edit the .env file with your secure password
   DB_PASSWORD=your_secure_password
   ```

   **⚠️ Important**: Never commit the `.env` file to version control!

   For detailed security information, see [SECURITY.md](SECURITY.md).

### Backend Setup

1. Navigate to backend directory:
   ```bash
   cd backend/python
   ```

2. Create and activate virtual environment:
   ```bash
   python3 -m venv venv
   source venv/bin/activate
   ```

3. Install dependencies:
   ```bash
   pip install -r requirements.txt
   ```

### Frontend Setup

1. Navigate to frontend directory:
   ```bash
   cd frontend
   ```

2. Install Flutter dependencies:
   ```bash
   flutter pub get
   ```

## 🎯 Running the Application

### Method 1: Automated Script (Recommended)

```bash
./start_app.sh
```

This script automatically:
- Checks if the backend server is running
- Starts the Python server with virtual environment
- Launches the Flutter frontend
- Handles cleanup on exit

### Method 2: Flutter Auto-Start

```bash
cd frontend
flutter run
```

The Flutter app automatically starts the backend server before launching the UI.

### Method 3: VS Code Launch Configuration

1. Open project in VS Code
2. Go to Run and Debug (Ctrl/Cmd + Shift + D)
3. Select "Launch Full App (Backend + Frontend)"
4. Click the play button

### Method 4: Manual Start

**Terminal 1 - Backend:**
```bash
cd backend/python
source venv/bin/activate
python3 expense_tracker_server.py
```

**Terminal 2 - Frontend:**
```bash
cd frontend
flutter run
```

## 🔧 Configuration

### Server Configuration
- **Backend Port**: 50051 (gRPC)
- **Database**: localhost:5432
- **Host**: localhost

### Environment Variables
The application uses environment variables for secure configuration. All sensitive data is stored in the `.env` file:

```bash
# Database Configuration
DB_NAME=postgres
DB_USER=postgres
DB_PASSWORD=your_secure_password
DB_HOST=localhost
DB_PORT=5432

# gRPC Server Configuration
GRPC_PORT=50051
```

**Security Note**: The `.env` file is automatically excluded from version control. See [SECURITY.md](SECURITY.md) for detailed security guidelines.

## 📱 Features

- ✅ Create, read, update, delete expenses
- ✅ Categorize expenses
- ✅ Date-based filtering
- ✅ Real-time data synchronization
- ✅ Cross-platform support (macOS, Windows, Linux, iOS, Android)
- ✅ Automatic backend server startup
- ✅ Dark/Light theme support

## 🛠️ Development

### Generating gRPC Code

If you modify the `schema/expense.proto` file:

**Python:**
```bash
cd backend/python
python -m grpc_tools.protoc --proto_path=../../schema --python_out=generated --grpc_python_out=generated ../../schema/expense.proto
```

**Dart:**
```bash
cd frontend
protoc --dart_out=grpc:lib/generated -I../schema ../schema/expense.proto
```

### Database Schema

The application creates the following table structure:

```sql
CREATE TABLE expenses (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    amount DECIMAL(10,2) NOT NULL,
    category INTEGER NOT NULL,
    expense_date DATE NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
```

### Adding Dependencies

**Python:**
```bash
cd backend/python
source venv/bin/activate
pip install package_name
pip freeze > requirements.txt
```

**Flutter:**
```bash
cd frontend
flutter pub add package_name
```

## 🐛 Troubleshooting

### Common Issues

1. **"Connection refused" error**
   - Ensure PostgreSQL is running: `brew services start postgresql`
   - Check if backend server started: `lsof -i :50051`

2. **"Permission denied" for start_app.sh**
   ```bash
   chmod +x start_app.sh
   ```

3. **Python module not found**
   ```bash
   cd backend/python
   source venv/bin/activate
   pip install -r requirements.txt
   ```

4. **Flutter build issues**
   ```bash
   cd frontend
   flutter clean
   flutter pub get
   ```

5. **gRPC connection issues**
   - Verify server is running on port 50051
   - Check firewall settings
   - Ensure localhost resolution

### Logs and Debugging

- **Backend logs**: Check terminal output where server is running
- **Frontend logs**: Check Flutter debug console
- **Database logs**: Check PostgreSQL logs

## 📄 License

This project is licensed under the MIT License - see the LICENSE file for details.

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## 📞 Support

For support and questions:
- Check the [AUTO_START_GUIDE.md](AUTO_START_GUIDE.md) for detailed startup instructions
- Review the troubleshooting section above
- Open an issue in the repository

---

**Happy expense tracking! 💰📊**