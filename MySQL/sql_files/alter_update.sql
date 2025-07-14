use Rohit;

create table demo2 (ID int, Name varchar(20), Salary int);

insert into demo2 values
(1, "Rohit", 15000),
(2, "Yash", 15000),
(3, "Aakash", 20000),
(4, "Piyush", 15000),
(5, "Aish", 20000);

# alter table commands

# add a column
alter table demo2 add (email varchar(25));

# rename a column
alter table demo2 rename column email to Email_ID;

# remove an column entirely
alter table demo2 drop Email_ID;

# rename the entire table
alter table demo2 rename demo3; 

-- ------------------------------------------------------------ --

# update table commands

update demo2 set Salary = 20000, Email_ID = "rohit@gmail.com" where id = 1;
update demo2 set Email_ID = "yash@gmail.com" where id = 2;
update demo2 set Email_ID = "aakash@gmail.com" where id = 3;
update demo2 set Email_ID = "piyush@gmail.com" where id = 4;
update demo2 set Email_ID = "aish@gmail.com" where id = 5;

select * from demo2;
truncate demo2;
drop table demo2