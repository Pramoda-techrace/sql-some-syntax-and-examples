delimiter $$
create function f_emp_avg_salary(p_emp_no integer ) returns decimal(10,2)
deterministic no sql reads sql data
begin
declare v_avg_salary decimal(10,2);
select avg(s.salary) into v_avg_salary from employees e
join salaries s on s.emp_no = e.emp_no;
return v_avg_salary;
end $$
delimiter ;

select f_emp_avg_salary(11300);

use employees;

delimiter $$
create function f_emp_info(f_first_name varchar(14), f_last_name varchar(15)) returns  decimal(12,2)
deterministic no sql reads sql data
begin
declare v_max_from_date date ; 
declare v_salary decimal(12,2);
select max(from_date) into v_max_from_date from employees e 
join salaries s on s.emp_no = e.emp_no
where e.first_name =f_first_name and e.last_name = f_last_name;

select s.salary into v_salary from employees e
join salaries s on s.emp_no = e.emp_no
where e.first_name = f_first_name and e.last_name = f_last_name and s.from_date  = v_max_from_date;
return v_salary;

 
end $$
delimiter ;

select f_emp_info('aruna',"journel");


