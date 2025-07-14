use Rohit;

# emp table with eid, ename, ebod, edesignation, emgrid, esal, edeptno

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

# department table with deptno and deptloc

create table dept (DEPTNO INT, DEPTLOC VARCHAR(20));

insert into dept values
(101, "BORIVALI"),
(102, "THANE"),
(103, "PALGHAR");

select * from dept;
truncate dept;

# arithmetic operators

# Q1. Calculate annual salary of employees.
select ESAL * 12 as ANNUAL_SALARY from emp;

# Q2. Display ename and annual salary of employees.
select ENAME, ESAL * 12 from emp;

# Q3. display salary and add 100 rupees to their salaries.
select ESAL, ESAL + 100 from emp;

# Q4. display salary and subtract 100 rupees from their salaries.
select ESAL, ESAL - 100 from emp;

# Q5. display ename, their hiredate and their 15 day salary.
select ENAME, EBOD, ESAL / 2 from emp;

# comparison operators (=, >, <, >=, <=)

select * from emp where ESAL = 42000;
select * from emp where ESAL >= 40000;
select * from emp where EBOD < '2005-02-28';

# logical operators. ( and, or, not[!=] )

select * from emp where ESAL >= 40000 and EDEPTNO != 103;
select * from emp where EDEPTNO = 102 or EDEPTNO = 103;
select * from emp where EDEPTNO != 102;

# IN, NOT IN, BETWEEN, NOT BETWEEN operator.

select * from emp where EDESIGNATION in ('DATA SCIENTIST', 'DATA ENGINEER');
select * from emp where EDESIGNATION not in ('DATA SCIENTIST');

select * from emp where ESAL between 40000 and 55000;
select * from emp where ESAL not between 40000 and 50000;

# order by clause.

select * from emp order by ENAME asc;
select * from emp order by ESAL desc;