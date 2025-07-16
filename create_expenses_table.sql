-- Create expenses table for Personal Expense Tracker
-- Run this script in your expenses_db database

CREATE TABLE IF NOT EXISTS expenses (
    id SERIAL PRIMARY KEY,
    description VARCHAR(255) NOT NULL,
    amount DECIMAL(10, 2) NOT NULL,
    category VARCHAR(100),
    expense_date DATE NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create an index on expense_date for better query performance
CREATE INDEX IF NOT EXISTS idx_expenses_date ON expenses(expense_date);

-- Create an index on category for filtering
CREATE INDEX IF NOT EXISTS idx_expenses_category ON expenses(category);

-- Insert some sample data (optional)
INSERT INTO expenses (description, amount, category, expense_date) VALUES
    ('Grocery shopping', 85.50, 'Food', '2025-01-15'),
    ('Gas station', 45.00, 'Transportation', '2025-01-15'),
    ('Coffee shop', 12.75, 'Food', '2025-01-16'),
    ('Movie tickets', 28.00, 'Entertainment', '2025-01-16')
ON CONFLICT DO NOTHING;

SELECT 'Expenses table created successfully!' AS status;