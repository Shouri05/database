#ddl
#data definition language
#DDL queris are used to define and create the database and the tables
#1. Creating database:
create database db;
create database if not exists db;
#above 2 queries are used to create a database;
#first one creates a database and if the database exists, it shows error;
#the second one shows a warning if the database exists;
#2. Go inside database;
use db;
#3. Creating the table: Syntax(create table tablename(column name 1 datatype, column name 2 datatype etc));
create table student(name text,email varchar(30),number int,grade int);
#There is another way to create a table;
create table student(name text,email varchar(30),number int,grade int);
#4. To show databases;
show databases;
#5. Altering the table name and adding the new column;
alter table student rename to students;
select * from students;
alter table students add role_number int;
#6. trunket: used to remove all the data from the database table;

#7. Drop: used to delete database completely;
create database db1;
drop database db1;