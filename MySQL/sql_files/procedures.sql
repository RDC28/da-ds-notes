use Rohit;

drop procedure if exists test;

delimiter //
create procedure test()
begin
drop table if exists test_procedure;
create table if not exists test_procedure (id int, name varchar(20));
insert into test_procedure values (1, "rohit"), (2, "yash"), (3, "aakash");
update test_procedure set name = "Rohit" where id = 1;
insert into test_procedure values (4, "ankit");
delete from test_procedure where id = 4;
select * from test_procedure;
end //
delimiter ;

call test(); # runs the entire procedures again and shows the final output.

create table procedures(id int, name varchar(20));

drop procedure if exists insert_values;

delimiter //
create procedure insert_values(in id int, in name varchar(20))
begin
insert procedures values (id, name);
end //
delimiter ;

call insert_values(23, 'ankit');
select * from procedures;