use employees;


delimiter $$

create procedure emp_info (in p_first_name varchar(14), in p_last_name varchar(16), out p_emp_no integer)
begin
select e.emp_no into p_emp_no from employees e 
where p_first_name = e.first_name and p_last_name = e.last_name; 
end $$
delimiter ;

set @p_emp_no = 0;
call employees.emp_info('anneke','preusig',@p_emp_no);
select @p_emp_no; 


select * from employees
limit 100;