import mysql.connector

HOST = "localhost"
USERNAME = "your_username"
PASSWORD = "your_password"

def create_database(database_name):

  try:
    connection = mysql.connector.connect(host=HOST, user=USERNAME, password=PASSWORD)
    cursor = connection.cursor()
    cursor.execute("CREATE DATABASE IF NOT EXISTS `alx_book_store`;")
    connection.commit()
    print(f"Database '{database_name}' created successfully!")
  except mysql.connector.Error as err:
    print(f"Error creating database: {err}")
  finally:
    if connection:
      connection.close()

if __name__ == "__main__":
  create_database("alx_book_store")