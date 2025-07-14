use Rohit;

truncate con1;
drop table con1;
select * from con1;

create table con1(
				id int not null,
                name varchar(20),
                city varchar(20)default "mumbai",
                age int check (age >= 18),
                phone int unique
                );
                
# 1. not null. here id column is not null and it allows duplicates ids but not null values
insert into con1 values (1, "rohit", "nalasopara", 20, 1234597890);
insert into con1 values (1, "yash", "nalasopara", 20, 1122334455);
insert into con1 values (null, "yash", "nalasopara", 20, 2233445566); # error cause id can not be null.

# 2. defautlt keyword allows us to define a default value for when the user doesn't provide a value for that column.
insert into con1 values (2, "aakash", "pune", 20, 22164654); # here city is provided as "pune" so it will enter "pune"
insert into con1 (id, name, age, phone) values (3, "piyush", 20, 5465461); # here city not provided so "mumbai" taken.

# 3. check constraint only allows entry if the value in that particular column passes the conditions.
insert into con1 values (4, 'rohit', 'nalasopara', 20, 65465123); # since age > 20 it will be accepted. 
insert into con1 values (5, 'ankit', 'nalasopara', 5, 148651025); # since age < 20 it will not be accepted. 

# 4. unique only allows unique values in columns but allows nulls.
insert into con1 values(6, 'aakash', 'nalasopara', 21, 123456); # unique phone number accepted.
insert into con1 values(6, 'aakash', 'nalasopara', 21, 123456); # phone number already exists.

truncate con1;
drop table con1;
select * from con1;

-- ------------------ primary and foreign keys ------------------ --

create table parent(
					p_id int primary key,
					name varchar (20)
                    );
                    
create table child (
					c_id int,
					foreign key child(c_id)
                    references parent(p_id),
					name varchar(20)
                    );
                    
insert into parent values (1, "rohit"),
						  (2, "yash"),
                          (3, "piyush"),
                          (4, "aakash"),
                          (5, "ankit");
			
insert into child values  (1, "rohit"), # duplicate entries for same id allowed here.
						  (1, "yash"),
                          (2, "piyush"),
                          (4, "aakash");

insert into child values (28, 'ankit'); # not accepted since this id does not exist in parent table.