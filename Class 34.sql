#dml
#Data Manipulation Language
#The queries are used to manipulate or make changes in the data
#1. Insert is used to insert data in the database
#Syntax: Insert into tablename(all the column names of the table) values(data)
use db;
select * from students;
insert into students(name,email,number,grade,role_number)values("Srivats","sbpatruni3@gmail.com",917441,8,007);
insert into students(name,email,number,grade,role_number)values("Bob","bob232@gmail.com",839263,8,019);
insert into students(name,email,number,grade,role_number)values("Jim","jim8923@gmail.com",628456,8,609);
#2. Update
#used to update the data in the table
#Syntax:update table_name set new_value where whose detail needs to be updated
update students set name="Sri" where name="Srivats";
set sql_safe_updates=0;
update students set role_number=9 where role_number=7;
update students set email="bob123@gmail.com",role_number=82 where name="Bob";
#3. Delete
#Syntax: delete from table_name where column_name=value you want to delete
delete from students where name="Jim";
# To save all queries once done use commit
commit;