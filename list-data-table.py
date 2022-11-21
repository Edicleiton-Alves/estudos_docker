from psycopg2 import connect

conn = connect(
    dbname = "dock_db",
    user = "edi",
    host = "172.17.0.2",
    password = "fiap"
)
cursor = conn.cursor()
cursor.execute(f"SELECT * FROM my_table;")

for i, record in enumerate(cursor):
    print ("\n", type(record))
    print (record)

cursor.close()
conn.close()