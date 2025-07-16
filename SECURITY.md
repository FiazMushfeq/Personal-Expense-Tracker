# Security Guide

## Database Credentials Security

This project now uses environment variables to securely manage database credentials and other sensitive configuration.

### Setup Instructions

1. **Copy the example environment file:**
   ```bash
   cp .env.example .env
   ```

2. **Update the `.env` file with your actual credentials:**
   ```bash
   # Database Configuration
   DB_NAME=postgres
   DB_USER=postgres
   DB_PASSWORD=your_actual_secure_password
   DB_HOST=localhost
   DB_PORT=5432
   
   # gRPC Server Configuration
   GRPC_PORT=50051
   ```

3. **Install the required dependency:**
   ```bash
   cd backend/python
   pip install python-dotenv
   ```

### Security Features Implemented

✅ **Environment Variables**: All sensitive data moved to `.env` file
✅ **Git Ignore**: `.env` file excluded from version control
✅ **Example File**: `.env.example` provides template without sensitive data
✅ **Fallback Values**: Code includes safe defaults for non-sensitive settings
✅ **VS Code Security**: Database password removed from settings, uses prompt instead
✅ **Path Security**: Absolute paths with usernames replaced with relative paths

### Files Updated

- `backend/python/database.py` - Uses environment variables
- `backend/python/expense_tracker_server.py` - Removed hardcoded credentials
- `check_db.py` - Uses environment variables
- `.vscode/settings.json` - Removed hardcoded password
- `frontend/lib/main.dart` - Uses relative path
- `backend/python/requirements.txt` - Added python-dotenv dependency

### Best Practices

1. **Never commit `.env` files** to version control
2. **Use strong, unique passwords** for database access
3. **Regularly rotate credentials** in production environments
4. **Use different credentials** for development, staging, and production
5. **Limit database user permissions** to only what's necessary
6. **Enable database connection encryption** in production

### Production Deployment

For production environments:

1. Use a secrets management service (AWS Secrets Manager, Azure Key Vault, etc.)
2. Set environment variables through your deployment platform
3. Use database connection pooling
4. Enable SSL/TLS for database connections
5. Implement proper network security (VPC, firewalls)

### Troubleshooting

If you encounter connection issues after implementing these changes:

1. Verify your `.env` file exists and contains correct values
2. Ensure `python-dotenv` is installed: `pip install python-dotenv`
3. Check that your database is running and accessible
4. Verify the database credentials are correct

### Environment Variables Reference

| Variable | Description | Default | Required |
|----------|-------------|---------|----------|
| `DB_NAME` | Database name | `postgres` | No |
| `DB_USER` | Database username | `postgres` | No |
| `DB_PASSWORD` | Database password | None | **Yes** |
| `DB_HOST` | Database host | `localhost` | No |
| `DB_PORT` | Database port | `5432` | No |
| `GRPC_PORT` | gRPC server port | `50051` | No |

**Note**: `DB_PASSWORD` must be set in your `.env` file for the application to work.