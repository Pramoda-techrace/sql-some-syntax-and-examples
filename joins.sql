

select * from departments_dup;

use employees;
SELECT 
    *
FROM
    employees
ORDER BY emp_no DESC
LIMIT 100;
use employees;
select * from employees
limit 100;

select first_name,last_name, dept_no ,from_date from employees a 
join  dept_emp as d on d.emp_no=a.emp_no
limit 100;


alter table departments_dup


alter table departments_dup
drop column dept_manager














