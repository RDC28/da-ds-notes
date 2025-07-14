use Rohit;

# all of these functions can also take a single string as an argument instead
# of a column name

select upper(name) from demo2;
select lower(name) from demo2;
select concat(name, salary) from demo2;
select length(name) from demo2;
select substr(name, 2, 4) from demo2;
select replace(name, 'h', 'a') from demo2;
select round(Salary) from demo2;
select mod(10, 6);
select sqrt(Salary) from demo2;
select round(sqrt(Salary)) from demo2;