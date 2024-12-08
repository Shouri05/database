use db;
create table employee(emp_id int,emp_name text,departmentName text);
create table department(departmentId int,departmentName text);
select employee.emp_name,employee.emp_id,employee.departmentName from employee left join Department on employee.departmentName = department.departmentName;