use db;
#constraints means putting a restriction on the table so that we can make sure the data is ont duplicated rather it's unuique, accurate data between the tables, columns are not empty, and also can put a coondition while creating the table. constraints are alwoays given at the timme when the table is created.
# 2 types of constraints are column constraints
#here we put constaint to one or more columns
#table constraint
#in this we give constarint to all the columns
#the different constraint which we can give are
#1 not null means column is not empty, no fireld in that column is empty we have to give the detail to all the data in that column
create table mark2(name text,email varchar(100),phone_number int not null, marks1 int);
desc teachers5;
#2 unique names of data needs to be unique no duplicate data is allowed
create table student6(f_name text,l_name text,email varchar(20)unique,age int);
#desc means description
#3 primary key means if we want data to be unique and not null at the same time
create table teachers2(fname text,lname text, age int, email varchar(20)primary key);
#4 check means to check for a particular condition
create table teachers5(fname text,lname text, age int check(age>25), email varchar(20));
#5 foreign key a key which is used to connect one table to another because there is one column which is same between both the two tables and thet data between tgose two columns should also be same. for that we connect both the tables and transfer data from one table to another
#in short, foreign key is used to transfer data from one table tgo another when columns are same
#tgis avoids innaccuracy
#we are connecting teacher2 and student7
create table student7(name text not null,id int primary key,email varchar(20),foreign key(email)references teachers2(email));