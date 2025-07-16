# Personal Expense Tracker Frontend

Flutter frontend application for the Personal Expense Tracker - a cross-platform expense management app.

## Features

- 📱 Cross-platform support (iOS, Android, macOS, Windows, Linux)
- 💰 Create, edit, and delete expenses
- 📊 Categorize expenses with predefined categories
- 📅 Date-based expense filtering
- 🔄 Real-time data synchronization with backend
- 🎨 Modern Material Design UI
- 🌙 Dark/Light theme support
- 🚀 Automatic backend server startup

## Setup Instructions

### Prerequisites

- Flutter SDK (latest stable version)
- Dart SDK (included with Flutter)
- Backend server running (see backend documentation)

### Installation

1. **Install Flutter dependencies:**
   ```bash
   flutter pub get
   ```

2. **Generate gRPC code (if proto files change):**
   ```bash
   protoc --dart_out=grpc:lib/generated -I../schema ../schema/expense.proto
   ```

### Running the App

#### Method 1: Auto-Start (Recommended)
```bash
flutter run
```
The app automatically starts the backend server before launching.

#### Method 2: Manual Backend Start
```bash
# Terminal 1: Start backend
cd ../backend/python
python3 expense_tracker_server.py

# Terminal 2: Start frontend
flutter run
```

### Development

#### Project Structure
```
lib/
├── main.dart              # App entry point with auto-server startup
├── pages/                 # UI screens
│   ├── home_page.dart    # Main expense list view
│   └── ...
├── forms/                 # Input forms
│   ├── expense_form.dart # Add/edit expense form
│   └── ...
├── services/             # gRPC client services
│   ├── expense_service.dart
│   └── ...
└── generated/            # Generated gRPC code
    ├── expense.pb.dart
    ├── expense.pbgrpc.dart
    └── expense.pbenum.dart
```

#### Building for Production

**Android:**
```bash
flutter build apk --release
```

**iOS:**
```bash
flutter build ios --release
```

**Desktop (macOS):**
```bash
flutter build macos --release
```

**Web:**
```bash
flutter build web --release
```

### Configuration

- **Backend URL**: `localhost:50051` (gRPC)
- **Auto-start**: Enabled by default in `main.dart`
- **Theme**: System default with manual toggle support

### Troubleshooting

1. **Connection issues:**
   - Ensure backend server is running on port 50051
   - Check firewall settings
   - Verify localhost resolution

2. **Build issues:**
   ```bash
   flutter clean
   flutter pub get
   flutter run
   ```

3. **gRPC errors:**
   - Regenerate proto files if schema changed
   - Restart both frontend and backend

### Dependencies

- `grpc` - gRPC client support
- `protobuf` - Protocol buffer support
- `flutter/material.dart` - Material Design components
- Custom generated gRPC stubs

For more information, see the main project [README](../README.md).
