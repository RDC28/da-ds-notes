use Rohit;

create table department (
						d_id int primary key,
                        city varchar(20)
                        );
                        
create table employee (
					  id int not null,
                      fname varchar(20) unique,
                      lname varchar(20) unique,
                      gender varchar(1) check (gender = 'M' or 'm'),
                      salary int default 50000,
                      e_id int,
                      foreign key employee(e_id)
                      references department(d_id)
                      );
                      
insert into department values (101, 'thane'),
							  (102, 'borivali'),
                              (103, 'dadar');
                              
insert into employee values (1, "rohit", 'chavda', 'm', 60000, 101);
insert into employee values (2, "yash", 'pawar', 'm', 60000, 102);
insert into employee values (3, "aakash", 'sosa', 'm', 60000, 103);
insert into employee values (4, "ankita", 'yadav', 'f', 10000, 101); # won't enter cuz 'f'
insert into employee (id, fname, lname, gender, e_id) values (5, "piyush", "solanki", 'm', 102);

select * from employee;
truncate employee;
drop table employee;