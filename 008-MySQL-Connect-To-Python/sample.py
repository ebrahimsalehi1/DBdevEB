import mysql.connector

db = mysql.connector.connect(
    host="localhost",
    database="DBdevEB",
    user="root",
    password=""
)

print(db)
# fetching data from table

my_cursor = db.cursor()
my_cursor.execute("SELECT * FROM contacts")

row = my_cursor.fetchone()
while row is not None:
    print(row)
    row = my_cursor.fetchone()
