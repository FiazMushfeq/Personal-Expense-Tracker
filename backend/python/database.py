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
        
    def create_table(self):
        create_table_query = """
        CREATE TABLE IF NOT EXISTS expenses (
        id SERIAL PRIMARY KEY,
        title VARCHAR(255) NOT NULL,
        amount NUMERIC(10, 2) NOT NULL,
        category INTEGER NOT NULL,
        expense_date VARCHAR(255) NOT NULL
        );
        """
        self.cursor.execute(create_table_query)
    
    def insert_expense(self, title, amount, category, date):
        query = """
        INSERT INTO expenses (title, amount, category, expense_date)
        VALUES (%s, %s, %s, %s)
        RETURNING id;
        """
        self.cursor.execute(query, (title, amount, category, date))
        return self.cursor.fetchone()["id"]

    def list_expenses(self, date=None):
        if date:
            query = "SELECT * FROM expenses WHERE expense_date = %s;"
            self.cursor.execute(query, (date,))
        else:
            query = "SELECT * FROM expenses;"
            self.cursor.execute(query)
        return self.cursor.fetchall()