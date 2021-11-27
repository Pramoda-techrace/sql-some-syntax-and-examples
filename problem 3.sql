use employees;
SELECT 
    *
FROM
    employees
order by emp_no desc
limit 10;

UPDATE employees 
SET 
    first_name = 'stella',
    last_name = 'parkinson',
    birth_date = '1990-12-31',
    gender = 'f'
where
	emp_no = 999902;
    
select * from departments;

delete from departments
where dept_no = 'd010';

select count( distinct dept_no) from dept_emp;

