
select e.emp_no,e.first_name, e.last_name,d.dept_no,d.from_date from employees as e
right join dept_manager as d on e.emp_no = d.emp_no
order by d.dept_no asc,e.emp_no;

select * from  departments_dup as a
right join dept_manager as d on a.dept_no = d.dept_no
order by d.emp_no asc;
 # using where instead of join
select e.emp_no,e.first_name, e.last_name,d.dept_no,d.from_date from employees as e ,dept_manager as d 
where e.emp_no = d.emp_no
order by d.dept_no desc,e.emp_no;



