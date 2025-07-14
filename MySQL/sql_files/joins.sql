use Rohit;

create table movies_data (mv_id int, name varchar(20), main_char varchar(20));
create table movies_financials (mv_id int, budget int, revenue int);

insert into movies_data values (101, "conjuring", "ed"),
							   (102, "annabelle", "ed"),
                               (104, "jurassic world", "sj"),
                               (105, "interstellar", "pr"),
                               (107, "inception", "ld"),
                               (109, "chernobyl", "abc");
                               
insert into movies_financials values (101, 1000000, 20000000),
									 (103, 1500000, 17000000),
                                     (104, 1300000, 18000000),
                                     (106, 2400000, 55000000),
                                     (107, 1250000, 65000000);
									
# INNER JOIN
select * from movies_data join movies_financials on movies_data.mv_id = movies_financials.mv_id;

# OUTER LEFT JOIN
select * from movies_data left outer join movies_financials on movies_data.mv_id = movies_financials.mv_id;

# OUTER RIGHT JOIN
select * from movies_data right join movies_financials on movies_data.mv_id = movies_financials.mv_id;

# FULL JOIN (kind of)
select * from movies_data 
LEFT join movies_financials
on movies_data.mv_id = movies_financials.mv_id
union
select * from movies_data
RIGHT join movies_financials
on movies_data.mv_id = movies_financials.mv_id;