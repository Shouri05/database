use db;
#group by means grouping up the similar data or columns in one group
#here we can use aggregate functions aong with it
#if we have condition order by group by and aggregate functions in one line, then following sequence will be followed
#aggregate funciton-where condition-group by-order by
select * from marks;
#write a query to count the nuber of times numbers are coming or how many times every id is reperating
select count(*)from marks group by sid;
#write a query to find the sum of all the ids;

#write a query using a function and having clause to return to return the sid and the smarks
select sid,smarks from marks group by sid having sum(smarks)>2;
#having is used as a condition but it is always written after the group by
SELECT sid, SUM(smarks) AS total_marks FROM marks GROUP BY sid HAVING SUM(smarks) > 2;
SELECT smarks, MIN(sid) AS total_marks FROM marks GROUP BY smarks;
desc marks;
#order by means sorting in the order of the ascending or descending order using asc or dsc
#if you dont mention the asc or dsc, then it default it picks up asc
#sort the records in the ascending order of smarks
select * from marks order by smarks asc;
#sort in descending order
select * from marks order by smarks desc;
#applying order by on multiple columns
select * from marks order by sid, smarks;
#even if we write multiple columns, its always going to be in the order of te first column mentioned
select * from marks order by rand()limit 1;
#limit one means one random vaue is picked up