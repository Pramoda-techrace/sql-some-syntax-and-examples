use employees;
select d.first_name , d.last_name,d.hire_date,m.from_date,e.dept_name from departments e
join dept_manager m on e.dept_no = m.dept_no
right join employees d on m.emp_no = d.emp_no
limit 100;


select e.first_name , e.last_name , e.hire_date,  de.title , d.from_date from employees e
join dept_manager d on d.emp_no = e.emp_no
join titles de on de.emp_no = d.emp_no;

select de.dept_name,avg(s.salary) from salaries s
join dept_manager d on s.emp_no = d.emp_no
join departments de on de.dept_no = d. dept_no
group by de.dept_name;


select e.gender, count(gender) as total_emp_name  from employees e
group by e.gender;

select e.gender, count(dm.emp_no) from employees e 
join dept_manager dm on e.emp_no =dm.emp_no
group by gender;

select e.emp_no,e.first_name,e.last_name,null as dept_no, null as dept_name from employees e 
where e.emp_no = 10001
union all 
select null as emp_no,null as first_name , null as last_name,m.dept_no,m.from_date from dept_manager m
;

use employees;
select e.emp_no, e.dept_no,  e.from_date,e.to_date,null as dept_name from dept_emp e
union all 
select null as emp_no, m.dept_no, null as from_date, null as to_date ,m.dept_name from departments m
limit 100;






