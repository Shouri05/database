#inbuilt finctions are functions which are availabke inside the database
#1 aggregate functions which require group of input values to be given to get 1 single output.
#min is used to find out the minimum values
use students_details;
select min(role_number) from class;
#max is used to fund out the maximum value
select max(role_number) from class;
#count is used to coun the numbers of rows
select count(*) from class;
#sum is used to add all the data in a column
select sum(role_number) from class;
#avg is used to find out the average of all the numbers
select avj(role_number) from class;
#first is used to find out the beggining of the records
#we will use limit for that and set the limit to three so that the first three records of the table will be shown
select * from class limit 3;
# scalor functions are functions that require just one input value to give thhe output
#lcase cinverts to lowercase
select lcase(s_name) from class;
#ucase converts to uppercase
select ucase(s_name) from class;
#mid is used to do slicing from the text
select mid(s_name,1,3)from class;
#length is used to find out the length of the string
select length("Srivats") from class;
#round is used to round off the values
select round(marks) from class;
#now is used to find out the current date and time
select now();
#format is used to set the data in a particular format
select format(2222.089,2);