call employees.select_employees();
delimiter $$
create procedure  average_salary()
begin
	 select avg(salary) from salaries; 
end $$
delimiter ;


call employees.average_salary();
call average_salary();
call employees.average_salary;
call average_salary;


call select_salaries;


drop procedure average_salary;