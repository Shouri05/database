#nested queries
use db;
#nested query means query inside the query where main query is the outer query and inside query is the sub query
create table studentcourse(sid int,cid int);
create table course(cid int,cname text);
create table student2(sname text,sid int,saddress varchar(30),sphone int,sage int);
create table marks(sid int,smarks int);
insert into studentcourse(sid,cid) values (1,1);
insert into studentcourse(sid,cid) values (2,2);
insert into studentcourse(sid,cid) values (3,3);
insert into course(cid,cname) values (1,"DSA");
insert into course(cid,cname) values (2,"DBMS");
insert into course(cid,cname) values (3,"Program");
insert into student2(sname,sid,saddress,sphone,sage) values ("Reo",1,"Pune",9175541,19);
insert into student2(sname,sid,saddress,sphone,sage) values ("John",2,"Delhi",7856476,17);
insert into student2(sname,sid,saddress,sphone,sage) values ("Mic",3,"Pune",5869797,18);
insert into student2(sname,sid,saddress,sphone,sage) values ("Joe",4,"Delhi",9843210,19);
insert into marks(sid,smarks) values (1,96);
insert into marks(sid,smarks) values (2,88);
insert into marks(sid,smarks) values (3,75);
insert into marks(sid,smarks) values (4,100);
select sid from studentcourse where cid in(select cid from course where cname="DSA" or cname="DBMS");
#this qhery select all the student ids that have taken the course dsa and dbms
#select al the student names that have taken either dsa or dbms course
select sname from student2 where sid in(select sid from studentcourse where cid in(select cid from course where cname="DSA" or cname="DBMS"));