import psycopg2
from psycopg2.extras import RealDictCursor

class PostgresDB:
    def __init__(self, db_name, user, password, host="localhost", port=5432):
        self.connection = psycopg2.connect(
            dbname=db_name,
            user=user,
            password=password,
            host=host,
            port=port,
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