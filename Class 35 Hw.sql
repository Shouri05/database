create database students_details;
use students_details;
create table class(role_number int,s_name text,marks int);
select * from class;
insert into class(role_number,s_name,marks)values(001,"Srivats",100);
insert into class(role_number,s_name,marks)values(002,"Jim",85);
insert into class(role_number,s_name,marks)values(003,"Bob",93);
insert into class(role_number,s_name,marks)values(004,"Jill",66);
insert into class(role_number,s_name,marks)values(005,"Shawn",13);
insert into class(role_number,s_name,marks)values(006,"Marcus",77);
insert into class(role_number,s_name,marks)values(007,"Jude",87);
insert into class(role_number,s_name,marks)values(008,"Damian",96);
insert into class(role_number,s_name,marks)values(009,"Hillary",92);
insert into class(role_number,s_name,marks)values(010,"Jane",100);
select * from class where marks>=60;
select * from class where marks=100;
select * from class where marks!=70;