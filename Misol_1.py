import pymysql

# Database connection details
connection = pymysql.connect(
    host="localhost",
    port=3306,
    user="root",
    passwd="",
    database="alfraganus"
)

try:
    cursor = connection.cursor()

    query = "SELECT * FROM Yonalishlar"
    cursor.execute(query)

    # Fetch all rows from the result
    results = cursor.fetchall()
    for row in results:
        for i in range(len(row)):
            print(row[i],end=" ")
        print()
    query = "SELECT * FROM Kafedralar"
    cursor.execute(query)

    # Fetch all rows from the result
    results = cursor.fetchall()
    for row in results:
        for i in range(len(row)):
            print(row[i], end=" ")
        print()
    ism = input('Ismini kiriting: ')
    query = (f"SELECT * FROM Oqituvchilar WHERE ism = '{ism}'")
    cursor.execute(query)

    # Fetch all rows from the result
    results = cursor.fetchall()
    for row in results:
        for i in range(len(row)):
            print(row[i], end=" ")
        print()
    query = "SELECT * FROM Qarindoshlar"
    cursor.execute(query)

    # Fetch all rows from the result
    results = cursor.fetchall()
    for row in results:
        for i in range(len(row)):
            print(row[i], end=" ")
        print()

    query = "SELECT * FROM Fakultetlar"
    cursor.execute(query)

    # Fetch all rows from the result
    results = cursor.fetchall()
    for row in results:
        for i in range(len(row)):
            print(row[i], end=" ")
        print()
    query = "SELECT * FROM Rahbariyat"
    cursor.execute(query)

    # Fetch all rows from the result
    results = cursor.fetchall()
    for row in results:
        for i in range(len(row)):
            print(row[i], end=" ")
        print()
    # Example of inserting a new record into the table
    # insert_query = "INSERT INTO sample_table (column1, column2) VALUES (%s, %s)"
    # cursor.execute(insert_query, ("value1", "value2"))

    # Commit changes to the database
    connection.commit()

except pymysql.MySQLError as e:
    print(f"Error: {e}")
finally:
    # Closing the connection
    connection.close()