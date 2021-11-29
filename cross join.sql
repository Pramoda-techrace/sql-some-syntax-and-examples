select e.*,a.*, b.* from dept_manager a
cross join  departments_dup b
join employees e on a.emp_no = e.emp_no
where a.dept_no <> b.dept_no
order by a.emp_no, b.dept_no
limit 100;

select a.*,d.* from dept_manager a
cross join departments d
where a.dept_no = 'd009';


select * from employees e
cross join dept_manager d
join departments de on de.dept_no = d.dept_no
where e.emp_no < 10010
order by e.emp_no, de.dept_name; 

select e.*, d.* from employees e
cross join departments d
where e.emp_no <10011
order by e.emp_no,d.dept_name;