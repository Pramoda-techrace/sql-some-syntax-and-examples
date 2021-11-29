SELECT 
    SUM(salary)
FROM
    salaries;

select sum(salary) from salaries
where from_date > '1997-01-01';

select max(salary) from salaries;

select min(salary) from salaries;

select min(emp_no) from employees;

select max(emp_no) from employees;

select avg(salary) from salaries
where from_date > '1997-01-01';

select round(avg(salary)) from salaries
where from_date >'1997-01-01';

select round(avg(salary),2) from salaries
where from_date >'1997-01-01';

select * from departments_dup;

alter table departments_dup
change column dept_name dept_name varchar(40) null;

alter table departments_dup
drop index dept_name;
use employees;
insert into departments_dup (dept_no) values ('d011'),('d012');

select  dept_no, ifnull(dept_name, 'not entered a value')as dept_name from departments_dup;

alter table departments_dup
add column dept_manager varchar(40) after dept_name;

select dept_no, dept_name,coalesce(dept_manager,dept_name,'n/a') as dept_name_new from departments_dup;

select * from departments_dup;
use employees;
select 
ifnull(dept_no, 'N/A' )as dept_no ,
ifnull(dept_name,'department name not provided') as dept_name, 
coalesce(dept_no,dept_name) as dept_info 
from departments_dup;

select * from departments_dup;
