select  * from employees e 
join salaries s on e.emp_no = s.emp_no
where salary > 145000
order by e.emp_no desc;

set @@global.sql_mode := replace(@@global.sql_mode,'ONLY_FULL_GROUP_BY','');
 
 
select * from employees e
join titles t on e.emp_no =t.emp_no
where first_name = 'margareta' and last_name = 'markovitch'


