import psycopg2
from psycopg2.extras import RealDictCursor

conn = psycopg2.connect(
    dbname='postgres',
    user='postgres',
    password='mysecretpassword',
    host='localhost',
    cursor_factory=RealDictCursor
)

cursor = conn.cursor()

try:
    cursor.execute('SELECT * FROM expenses')
    rows = cursor.fetchall()
    print(f'Found {len(rows)} expenses')
    for row in rows:
        print(dict(row))
except Exception as e:
    print(f"Error: {e}")
finally:
    conn.close()