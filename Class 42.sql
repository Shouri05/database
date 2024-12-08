#procedures are similar to function where we can store sequel queries, and whenever we want to use thoses queries, we can call those prpocedures
#this is better than copy pasting where if we want to use any code again, we have to paste the same code again, hence making the code bigger but proceure isa good opltion
DELIMITER 
&&  CREATE PROCEDURE procedure_name [[IN | OUT | INOUT] parameter_name datatype [, parameter datatype]) ]    
BEGIN    
    Declaration_section    
    Executable_section    
END &&  
DELIMITER ;
#syntax to call procedure
#call procedure_name
#4 types of procedure are
#1 procedure with no paramether-in this, no variables are passed in the round bracket of the procedure
use db;
DELIMITER && 
CREATE PROCEDURE a()    
BEGIN    
select * from marks;  
END &&  
DELIMITER ;
call a();
#2 procedure within parameter-here we pass a variable as an input and when the procedrue is called the value is passed
DELIMITER && 
CREATE PROCEDURE b(in var int)    
BEGIN    
select * from marks limit var;
END &&  
DELIMITER ;
call b(2);
#3 out procedure
#in this no input value or parameter is taken from the user, rather we give the out put directly, but we still give teh variable
DELIMITER && 
CREATE PROCEDURE c(out var int)    
BEGIN    
select max(smarks) into var from marks;
END &&
DELIMITER ;
#as it s not an in parameter, that is why we give no value when we call the procedure, but because variable is passed while creating the procedure, so we have to definitely give the variable when we call the procedrue
call c(@m);
select @m;
#@m is a temporary varibale, if we dont pass it error will come as when we created the procedure a variable is passed over there, so it expects something over here too when you call
#4 procedure with in and out parameter here we give the input value and then we get the output
DELIMITER && 
CREATE PROCEDURE d(inout var int)    
BEGIN    
select sid into var from marks where sid= var;
END &&  
DELIMITER ;
set @m="3";
call d(@m);
select @m;