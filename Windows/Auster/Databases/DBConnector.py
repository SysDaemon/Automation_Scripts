import pyodbc

SERVER = 'server'
DATABASE = 'db_name'
USERNAME = ''
PASSWORD = ''

connectionString = f'DRIVER={{ODBC Driver 18 for SQL Server}};SERVER={SERVER};DATABASE={DATABASE};UID={USERNAME};PWD={PASSWORD}'

conn = pyodbc.connect(connectionString)

