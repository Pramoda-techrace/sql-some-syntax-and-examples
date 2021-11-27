select * from employees
having hire_date>= '2000-01-01';

select first_name , count(first_name) as name_host from employees
group by first_name
having count(first_name) > 250

order by first_name;

select *,avg(salary) from salaries
group by emp_no
having avg(salary) >120000;


select  * , avg(salary) from salaries
where salary >120000
group by emp_no
order by emp_no;

select * from  salaries
where salary>120000 and emp_no = 10237
order by emp_no;



