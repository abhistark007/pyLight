create database sql_intro;
show databases;
use sql_intro;

create table emp_details (Name varchar(25) , Age int, gender char(1), 
doj date, city varchar(15) , salary float); 

describe emp_details;
show tables;

-- to inset the values 

insert into emp_details
values("Jimmmy" , 35 , "M", "2005-05-30," , "Chicago" , 70000),
("Shane", 30, "M", "1999-06-30", "Seattle", 55000),
("Shubham" , 23 , "M", "2021-04-16", "Pune", 150000),
("Ammy" , 45, "F" , "2003-06-19", "Pune", 1200);

-- To show the details
select * from emp_details;

-- to count the employes in the table
select count(name) as count_name from emp_details;

-- to get total sum of saleries 
select sum(salary) from emp_details;

-- to get the average of the salary 
select avg(salary) from emp_details;

-- * represents that we want to see the all

-- TO show the columns 
select name, age, city from emp_details;

-- to filter the table on the specific conditions we use 'where' clause
-- suppose we want to find the employes with age greater than 30
select * from emp_details where age > 30;

-- to find only female employes from the table 
select * from emp_details where gender="F";

-- to find the details of the employes who belongs to specific loaction we can use 'or' operator
select * from emp_details where 
city = 'Pune' or city = 'Chicago';

-- Another way to write the above Query using 'in' operator 
select * from emp_details where 
city in ('Pune', 'Chicago');

-- 'between' Operator, It is used as a range
select * from emp_details where 
doj between '2001-01-01' and '2010-12-31';

-- 'and' Operator 
select * from emp_details where
age>30 and gender='M';

-- To find total salary of the employes based on the gender 
-- 'group by'
select gender, sum(salary) as total_salary from emp_details
group by gender;

-- 'orderby' sort it by ascending or descending order 
-- default it sor it by ascedinng order 
select * from emp_details order by salary desc;

-- Basic Operation we can do using the select statement
select (10+20) as addition; -- Addition Operator 
select (10-20) as Substraction; -- Substrsction Operator

-- To find the legth of the string
select length('India') as total_length;

-- to repeat function
select repeat('@',10) as rep;

-- date and time functions
select curdate();  -- This will give the current date

-- To extract the day from the date value 
select day(curdate());

-- To display the current date and time 
select now();

-- To reverse any element from the table
select reverse(Name) from emp_details;
