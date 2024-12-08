#Operators
#1. Arithmetic Operators(+,-,*,/)
#2. Comparison Operators(<,>,<=,>,==,<>=)
#3. Logical Operators(and, or, between, exist, in, like, all)
use db;
#Arithmetic
select grade+2 as new_grade from students;
select grade*5 as new_grade1 from students;
select grade-5 as new_grade2 from students;
select grade/5 as new_grade3 from students;
#Comparison
select * from students where grade >=4;
select * from students where number <100;
#Logical
select * from students where number>=100 and grade>=20;
#between is used to set range
select * from students where role_number between 10 and 500;
#exist is used to check if that particuar thing is used to exist the the database records or not
select * from students where exists(select grade from students where grade>40);
#like means true if partucal numbers are matching, if you mentioned something and that something else similr to that particular thing to be displayed
select * from students where exists(select * from students where role_number>40);
select * from students where role_number like "82";
#in is used to check a particularracteristic of data exists inside the list or not
select * from students where role_number in(2, 82);