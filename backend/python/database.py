import os
import psycopg2
from psycopg2.extras import RealDictCursor
from dotenv import load_dotenv

# Load environment variables
load_dotenv()

class PostgresDB:
    def __init__(self, db_name=None, user=None, password=None, host=None, port=None):
        # Use environment variables with fallback to parameters
        self.connection = psycopg2.connect(
            dbname=db_name or os.getenv('DB_NAME', 'postgres'),
            user=user or os.getenv('DB_USER', 'postgres'),
            password=password or os.getenv('DB_PASSWORD'),
            host=host or os.getenv('DB_HOST', 'localhost'),
            port=port or int(os.getenv('DB_PORT', '5432')),
            cursor_factory=RealDictCursor
        )
        self.connection.autocommit = True
        self.cursor = self.connection.cursor()
    
    def insert_expense(self, title, amount, category, date):
        query = """
        INSERT INTO expenses (title, amount, category, expense_date)
        VALUES (%s, %s, %s, %s)
        RETURNING id;
        """
        self.cursor.execute(query, (title, amount, category, date))
        return self.cursor.fetchone()["id"]

    def get_expense(self, expense_id):
        query = "SELECT * FROM expenses WHERE id = %s;"
        self.cursor.execute(query, (expense_id,))
        return self.cursor.fetchone()

    def update_expense(self, expense_id, title, amount, category, date):
        query = """
        UPDATE expenses 
        SET title = %s, amount = %s, category = %s, expense_date = %s 
        WHERE id = %s;
        """
        self.cursor.execute(query, (title, amount, category, date, expense_id))
        return self.cursor.rowcount > 0

    def delete_expense(self, expense_id):
        query = "DELETE FROM expenses WHERE id = %s;"
        self.cursor.execute(query, (expense_id,))
        return self.cursor.rowcount > 0

    def list_expenses(self, date=None):
        if date:
            query = "SELECT * FROM expenses WHERE expense_date = %s;"
            self.cursor.execute(query, (date,))
        else:
            query = "SELECT * FROM expenses;"
            self.cursor.execute(query)
        return self.cursor.fetchall()