use Rohit;

create table emp (EID int, ENAME varchar(20), EBOD date,
				  EDESIGNATION varchar(20), EMGRID int,
                  ESAL int, EDEPTNO int);
                  
insert into emp values
(10100, 'ROHIT', '2005-02-28', 'DATA SCIENTIST' ,10106 , 40000, 101),
(10102, 'PIYUSH', "1978-12-30", 'DATA ANALYST' ,10107 , 20000, 102),
(10104, 'YASH', '1987-01-01', 'DATA ENGINEER' ,10145 , 60000, 103),
(10111, 'AAKASH', '2006-11-10', 'DATA SCIENTIST' ,10104 , 35000, 101),
(10115, 'ANKIT', '2001-03-24', 'DATA SCIENTIST' ,10116 , 34000, 101),
(10116, 'ASHUTOSH', '1999-04-26', 'DATA ANALYST' ,10144 , 18000, 102),
(10118, 'KAMLESH', '1998-06-28', 'DATA SCIENTIST' ,10114 , 42000, 101),
(10121, 'SWATI', '1987-02-25', 'DATA ENGINEER' ,10178 , 57000, 103),
(10122, 'DHRUVIN', '1845-10-01', 'DATA SCIENTIST' ,10135 , 39000, 101),
(10125, 'KRISHNA', '2000-11-14', 'DATA ANALYST' ,10147 , 21000, 102),
(10127, 'HIMANSHU', '2003-06-16', 'DATA ANALYST' ,10142 , 22000, 102),
(10130, 'AISH', '2004-02-23', 'DATA ENGINEER' ,10123 , 68000, 103);

select * from emp;
truncate emp;
drop table emp;

# subsqueries are queries inside of queries

# this returns full row where the salary is max.
select * from emp where ESAL = (select max(ESAL) from emp);

# this returns the second highest salary only.
select max(ESAL) from emp where ESAL < (select max(ESAL) from emp);

# using another subquery inside subquery we can return full detalils of the employee with the second highest salary.
select *
from emp
where ESAL = (
			  select max(ESAL)
              from emp
              where ESAL < (
						    select max(ESAL)
                            from emp
                            )
			 );

# find out the employee detail salary is greater than 35000
select * from emp where ESAL > (select 35000);

# fnd out the employee details whose salary is not greater than 30000
select * from emp where ESAL < (select 30000);

# find out the employee details who belong to DS department
select * from emp where EDESIGNATION = (select "DATA SCIENTIST");

# find out the employee details who does not belong to DS department
select * from emp where EDESIGNATION not in (select "DATA SCIENTIST");