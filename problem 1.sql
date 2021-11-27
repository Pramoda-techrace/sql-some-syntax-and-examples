select emp_no, count(dept_no) as total from dept_emp
where from_date > '2000-01-01'
group by emp_no
having total > 1
order by emp_no
limit 10;


select emp_no, count(emp_no) as total from dept_emp
where from_date > '2000-01-01'
group by emp_no
having total > 1
order by emp_no
limit 5;


select * from dept_emp
limit 100;

select * from employees
order by emp_no desc
limit 10;

insert into employees 
(
	emp_no,
    birth_date,
    first_name,
    last_name,
    gender,
    hire_date) 
    values 
    (
		999902,
        '1995-11-06',
        'pramod',
        'a p',
        'M',
        '2018-07-16');



