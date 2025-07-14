create database Rohit;
show databases;

use Rohit;

create table demo1 (ID int, Name varchar(20), City varchar(20));
show tables;
desc demo1;

insert into demo1 values
(1, "Rohit", "Nalasopara");

insert into demo1 values
(2, "Yash", "Nalasopara"),
(3, "Aakash", "Nalasopara"),
(4, "Piyush", "Nalasopara");

insert into demo1(ID, Name, City) values
(5, "Aish", "Nalasopara");

delete from demo1 where (ID = 1);
truncate demo1;
drop table demo1;

select * from demo1;
show tables;