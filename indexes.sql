create index i_hire_date on employees(hire_date);

select * from employees;

alter table employees
drop index i_hire_date;

select * from salaries 
where salary > 89000;

create index salary on salaries(salary);


alter table salaries
drop index salary;