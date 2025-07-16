-- Fix table permissions for expenses table
-- Run this as a PostgreSQL superuser (postgres user) in expenses_db database

-- Option 1: Change ownership of the table to expense_user
ALTER TABLE expenses OWNER TO expense_user;

-- Option 2: Grant all privileges to expense_user
GRANT ALL PRIVILEGES ON TABLE expenses TO expense_user;
GRANT ALL PRIVILEGES ON SEQUENCE expenses_id_seq TO expense_user;

-- Verify the table exists and check permissions
SELECT 
    schemaname,
    tablename,
    tableowner,
    hasinserts,
    hasselects,
    hasupdates,
    hasdeletes
FROM pg_tables 
WHERE tablename = 'expenses';

-- Check if sample data exists
SELECT COUNT(*) as record_count FROM expenses;

SELECT 'Table permissions fixed successfully!' AS status;