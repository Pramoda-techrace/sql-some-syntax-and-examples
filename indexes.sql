create index i_hire_date on employees(hire_date);

select hire_date from employees;

alter table employees
drop index i_hire_date;

select * from salaries 
where salary > 89000;

create index salary on salaries(salary);


alter table salaries
drop index salary;


select salary from salaries;




