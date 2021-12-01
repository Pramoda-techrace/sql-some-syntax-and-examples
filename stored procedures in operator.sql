use employees;
drop procedure if exists emp_salary;

delimiter $$
create  procedure emp_salary(in  p_emp_no integer)
begin 
select e.first_name, e.last_name,avg(s.salary) from employees e
join salaries s on s.emp_no= e.emp_no
where p_emp_no = e.emp_no;
end $$
delimiter ;

call emp_salary(11300);











