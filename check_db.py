import os
import psycopg2
from psycopg2.extras import RealDictCursor
from dotenv import load_dotenv

# Load environment variables
load_dotenv()

conn = psycopg2.connect(
    dbname=os.getenv('DB_NAME', 'postgres'),
    user=os.getenv('DB_USER', 'postgres'),
    password=os.getenv('DB_PASSWORD'),
    host=os.getenv('DB_HOST', 'localhost'),
    port=int(os.getenv('DB_PORT', '5432')),
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