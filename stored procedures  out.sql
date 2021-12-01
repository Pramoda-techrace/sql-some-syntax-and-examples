use employees;
drop procedure if exists emp_salary;

delimiter $$
create procedure emp_salary(in p_emp_no integer , out p_avg_salary decimal(10,3))
begin 
select avg(s.salary) into p_avg_salary from employees e
join salaries s on s.emp_no = e.emp_no
where p_emp_no= s.emp_no;
end $$
delimiter ;

set @p_avg_salary = 0;
call employees.emp_salary(11200, @p_avg_salary);
select @p_avg_salary;
