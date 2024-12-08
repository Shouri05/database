create database employee;
use employee;
create table department(dname text, dnumber int primary key, dlocation varchar(20));
create table project(pnumber int primary key, dnumber int, pname text,foreign key(dnumber)references department(dnumber));
create table payment(salary int primary key, tax int, pension int, deduction int, payrate int);
create table employee1(ename text, SSN int primary key, salary int, dnumber int, sex text, pnumber int,foreign key(dnumber)references department(dnumber),foreign key(salary)references payment(salary),foreign key(pnumber)references project(pnumber));
create table payroll1(HourlyWorked int primary key, RateofMonth int, SSN int, foreign key(SSN)references employee1(SSN));
create table ledger(SSN int primary key, Date varchar(20), foreign key(SSN)references employee1(SSN));
insert into department(dname,dnumber,dlocation)values("CS",1,"Nekemte");
insert into department(dname,dnumber,dlocation)values("Buisness",2,"Jimma");
insert into department(dname,dnumber,dlocation)values("IT",3,"Ambo");
insert into department(dname,dnumber,dlocation)values("Agri",4,"Shambu");
insert into project(pnumber,dnumber,pname)values(001,3,"sisco");
insert into project(pnumber,dnumber,pname)values(002,4,"plantscience");
insert into project(pnumber,dnumber,pname)values(003,1,"prolong");
insert into project(pnumber,dnumber,pname)values(004,2,"marketing");
insert into payment(salary,tax,pension,deduction,payrate)values(500,3,5,6,30);
insert into payment(salary,tax,pension,deduction,payrate)values(1500,5,5,10,79);
insert into payment(salary,tax,pension,deduction,payrate)values(5000,45,78,23,80);
insert into payment(salary,tax,pension,deduction,payrate)values(2000,123,23,90,90);
insert into payment(salary,tax,pension,deduction,payrate)values(3500,3,55,60,95);
insert into employee1(ename,SSN,salary,dnumber,sex,pnumber)values("Beresa",0987,500,001,"M",1);
insert into employee1(ename,SSN,Salary,dnumber,sex,pnumber)values("Hawaii",0967,1500,003,"F",3);
insert into employee1(ename,SSN,Salary,dnumber,sex,pnumber)values("Bontu",0900,3500,002,"F",4);
insert into employee1(ename,SSN,Salary,dnumber,sex,pnumber)values("Megarsa",0345,5000,004,"M",2);
insert into employee1(ename,SSN,Salary,dnumber,sex,pnumber)values("Bula",0768,2000,002,"M",3);
insert into employee1(ename,SSN,Salary,dnumber,sex,pnumber)values("Abdena",0842,500,001,"M",1);
insert into employee1(ename,SSN,Salary,dnumber,sex,pnumber)values("Gemada",0917,5000,002,"M",4);
insert into payroll1(HourlyWorked,RateofMonth,SSN)values(1,0987,0900);
insert into payroll1(HourlyWorked,RateofMonth,SSN)values(4,0917,0345);
insert into payroll1(HourlyWorked,RateofMonth,SSN)values(2,0768,0768);
insert into payroll1(HourlyWorked,RateofMonth,SSN)values(3,0987,0842);
insert into ledger(SSN,Date)values(0987,"12/5/2007");
insert into ledger(SSN,Date)values(0768,"16/6/2007");
insert into ledger(SSN,Date)values(0917,"13/3/2007");
insert into ledger(SSN,Date)values(0345,"12/8/2007");
insert into ledger(SSN,Date)values(0842,"12/5/2007");
select * from department;
select * from project;
select * from department;
select * from payment;
select * from payroll1;
select * from ledger;
#count all the employees whos salaries is less then equal to 500
#find the average salaries of employees from payment table
#write a query to find the sum of all the payments in payment table first use the sum function on salary, then on pension and deduction
#calculate the min and max of salary and pension  of tax, deduction
#find employee id, salary of all employees in the order of their employee names
#apply cross join between employee and deparrtkment table
#use right join between employee and payment table
#select all the records from the leasure table in the ascending order of their date
#write a procedure of coding to display all the employees
select count(*) from employee1 where salary<=500;
select avg(salary) from payment;
select sum(salary) from payment;
select sum(pension) from payment;
select sum(deduction) from payment;
select min(salary) from payment;
select max(salary) from payment;
select min(pension) from payment;
select max(pension) from payment;
select min(deduction) from payment;
select max(deduction) from payment;
select min(payrate) from payment;
select max(payrate) from payment;
#rwrite a query to find those departments where at least 2 employees work from employee table
#return department number and # of employees
select count(*) from employee1 group by dnumber having count(*)>=2;
#write the query to find the employee id, salary, and commision in the order of the employee names
select * from employee1 order by ename;
#write a query to apply cross-join between the employee and department table to show employee name, number, and department name
select ename,pnumber,dname from employee1 cross join department;
#use right join between employee table and payment table
select * from employee1 right join payment on payment.salary=employee1.salary;
#write a query that selects all records from the ledger table that ascends in the order of their date
select * from ledger order by Date asc;
#create a procedure to find out the details of all the employees
DELIMITER &&  
CREATE PROCEDURE emp_details()  
BEGIN  
    SELECT * FROM employee1;
END &&  
DELIMITER ;  

call emp_details;