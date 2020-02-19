import mysql.connector
mydb = mysql.connector.connect(
  host="localhost",
  user="root",
  passwd="Sanelisiwe2000"
)
print(mydb)

import mysql.connector
mydb = mysql.connector.connect(
  host="localhost",
  user="root",
  passwd="Sanelisiwe2000"
)
mycursor = mydb.cursor()
mycursor.execute("SHOW DATABASES")
for x in mycursor:
    print(x)

#Add more Products
import mysql.connector
mydb = mysql.connector.connect(
  host="localhost",
  user="root",
  passwd="Sanelisiwe2000",
  database="world"
) 

cur=mydb.cursor()
s="INSERT INTO sprint (Sweets,Brands,Barcode) Values(%s,%s,%s)"
sql=[
    ("Lollypop","Cadbury","df8h7tgt"),
]
cur.executemany(s,sql)
mydb.commit()
#CREATE COLUMNS
import mysql.connector
mydb = mysql.connector.connect(
  host="localhost",
  user="root",
  passwd="Sanelisiwe2000",
  database="world"
) 

cur=mydb.cursor()

cur.execute("ALTER TABLE sprint ADD Barcode varchar(225)")

import mysql.connector
mydb = mysql.connector.connect(
  host="localhost",
  user="root",
  passwd="Sanelisiwe2000",
  database="world"
) 

cur=mydb.cursor()

cur.execute("SELECT Products FROM world.sprint")

import mysql.connector
mydb = mysql.connector.connect(
  host="localhost",
  user="root",
  passwd="Sanelisiwe2000",
  database="world"
) 
db_cursor = mydb.cursor()
#Here creating database table as student'
db_cursor.execute("CREATE TABLE Chocolate (id INT, name VARCHAR(255))")
#Get database table'
db_cursor.execute("SHOW TABLES")
for table in db_cursor:
	print(table)

import mysql.connector
mydb = mysql.connector.connect(
  host="localhost",
  user="root",
  passwd="Sanelisiwe2000",
  database="world"
) 
db_cursor = mydb.cursor()
#Here creating database table as student'
db_cursor.execute("CREATE TABLE Chips (id INT, name VARCHAR(255))")
#Get database table'
db_cursor.execute("SHOW TABLES")
for table in db_cursor:
	print(table)

import mysql.connector
mydb = mysql.connector.connect(
  host="localhost",
  user="root",
  passwd="Sanelisiwe2000",
  database="world"
) 
db_cursor = mydb.cursor()
#Here we modify existing column id
db_cursor.execute("ALTER TABLE Chocolate MODIFY id INT PRIMARY KEY")
