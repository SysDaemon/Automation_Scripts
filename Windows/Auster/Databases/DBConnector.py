import pyodbc

SERVER = 'server'
DATABASE = 'db_name'
USERNAME = ''
PASSWORD = ''

connectionString = f'DRIVER={{SQL Server Native Client 11.0}};SERVER={SERVER};DATABASE={DATABASE};UID={USERNAME};PWD={PASSWORD}'

conn = pyodbc.connect(connectionString)

SQL_QUERY = """
SELECT @@SERVERNAME AS ServerName
"""

cursor = conn.cursor()
cursor.execute(SQL_QUERY)

records = cursor.fetchall()

print(f"{records}")