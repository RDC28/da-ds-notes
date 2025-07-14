use Rohit;

create table TCL_test(id int, name varchar(20));
drop table TCL_test;
select * from TCL_test;

start transaction;
set autocommit = 0;

insert into TCL_test values (1, "abc"), (2, "def"), (3, "ghi"), (4, "jkl");
# close the terminal and the values will be gone.

# using the commit keyword, the values will be saved permanently.
commit;

# savepoint is a temporary commit. if you commit after creating savepoint then the savepoint will be gone.
savepoint savepoint_1; 

insert into TCL_test values (5, "mno");
update TCL_test set name = "GHI" where id = 3;

# this will roll back to the savepoint state successfully.
rollback to savepoint_1;

# testing normal commit and rollbacks
insert into TCL_test values(6, "pqr");
commit;

insert into TCL_test values(7, "stu");
commit;

# this will not work after commit.
rollback to savepoint_1;

select * from TCL_test;
drop table TCL_test;