use db;
#a subquery is a query inside a query, which means it comes inside the main query
#parent query is the main query and inner query is the parent query
#subqueries are always written out of operators given in the main query and are always written in the round bracket
#syntax to create a subquery
#select column_name from table_name where condition operator(select column_name from table_name where);
select * from students1 where StudentId in(select StudentId from students1 where DepartmentId > 3);
create table customer(customer_Id int,name text, age int,address varchar(30),salary int(30));
insert into customer(customer_Id,name,age,address,salary)values(1,"Dylan",52,"35 Lotus Drive",330000);
insert into customer(customer_Id,name,age,address,salary)values(2,"Randy",34,"42 Lakeside Lane",270000);
insert into customer(customer_Id,name,age,address,salary)values(3,"Leo",37,"42 Lakeside Lane",30000);
select * from customer;
create table VIP(customer_Id int,name text, age int,address varchar(30),salary int(30));
insert into VIP select * from customer where customer_Id in(select customer_Id from customer);
#the data has been transferred from one table to another by using the subqueries
update customer set salary=salary*0.25 where customer_Id in(select customer_Id from VIP where customer_Id>2);
set sql_safe_updates=0;
delete from customer where customer_Id in(select customer_Id from VIP where customer_Id<=1);