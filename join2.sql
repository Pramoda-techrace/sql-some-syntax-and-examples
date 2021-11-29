select a.emp_no, a.first_name,a.last_name, b.dept_no,a.hire_date from employees as a
join dept_manager as b on a.emp_no = b.emp_no
limit 10;

