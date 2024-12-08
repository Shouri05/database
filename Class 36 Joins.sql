#Join means joining the two tables together, for two tables to be joined togethed, we need to make sure that there is a common column in those two tables, otherwise joining is not possible.
#There are different ways int which the joining takes place
#1. Natural Joining
#In this join, two tables are joined together, and the column is not included. In natural join, the commoncolumn comes only once. But in inner join the common column comes twice

use db;
show tables;
select * from department;
select * from students1;
select * from students1 natural join Department;
#2. Self join
#In this the columns are attached with itself it creates 2 variables and both variables
select a.email,b.email from students a,students b where a.grade=b.grade;
select * from students1;
#3. Cross Join
#in cross join the tables are joined in such a way that all the pissible categories are joined with all the possible combinations;
select students1.StudentId,students1.StudentName,students1.DepartmentId,Department.DepartmentName from students1,Department;
#4. Inner Join or equi join
#in this only the columns which are common between two tables are joined and only the common colums are attached toggether, rest of the columns are not.
select students1.StudentId,students1.StudentName,students1.DepartmentId,Department.DepartmentId,Department.DepartmentName from students1 inner join Department on students1.DepartmentId=Department.DepartmentId;
#5. Outer Join
#outer join has three categories, 1 is left join, in left join, all the columns of one table will come, plus the common column between the two tables, but, the columns of the second table will not come.
#right join means allthe columns of the first table don't come, only the comlumn of the second table and the common columns of the two tables will come.
select students1.StudentId,students1.StudentName,students1.DepartmentId from students1 left join Department on students1.DepartmentId = Department.DepartmentId;
select Department.DepartmentId,Department.DepartmentName from Department right join students1 on students1.DepartmentId = Department.DepartmentId;