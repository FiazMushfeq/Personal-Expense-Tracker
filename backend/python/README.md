# Personal Expense Tracker Backend

## Setup Instructions

### 1. Install Dependencies

```bash
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt
```

### 2. Environment Variables

Set the following environment variables (recommended for production):

- `DB_NAME` (default: postgres)
- `DB_USER` (default: postgres)
- `DB_PASSWORD` (default: mysecretpassword)
- `DB_HOST` (default: localhost)
- `DB_PORT` (default: 5432)

Update `expense_tracker_server.py` to use these variables for better security.

### 3. Database Setup

Ensure PostgreSQL is running and create the required table:

```sql
CREATE TABLE IF NOT EXISTS expenses (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255),
    amount FLOAT,
    category INT,
    expense_date DATE
);
```

### 4. Generate gRPC Code (if you change the proto file)

```bash
python -m grpc_tools.protoc -I../../schema --python_out=generated --grpc_python_out=generated ../../schema/expense.proto
```

### 5. Run the Server

```bash
python expense_tracker_server.py
```
