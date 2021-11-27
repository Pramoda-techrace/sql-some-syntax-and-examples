use employees;
select * from titles
order by emp_no desc
limit 10;

insert into titles 
(
		emp_no,
    title,
    from_date,
    to_date
)
 values 
 ( 
		'999903',
    'senior engineer',
    '1998-10-01',
    '1999-10-01'
    );
insert into employees (emp_no,birth_date,first_name, last_name,gender,hire_date) values 
(999903,
'1977-09-14',
'jhonathan',
'creek',
'm',
'1999-01-01');

insert into dept_emp values (999903,'d005','1997-10-01','9999-01-01');

select * from dept_emp
order by emp_no desc
limit 100;

create table departments_dup (dept_no char(4) not null,dept_name varchar(40) not null);
select * from departments_dup;
insert into departments_dup ( dept_no,dept_name) select * from departments;

create table business_analysis (dept_no char(4) not null, dept_name varchar(40) not null);
insert into business_analysis 
select * from departments;

select * from business_analysis;

drop table business_analysis;
insert into departments values ('d010','business analysis');


create table new_one(emp_no int not null ,birth_date varchar(25) not null, first_name varchar(20) not null);
insert into new_one 
(emp_no , birth_date, first_name) 
select emp_no, birth_date,first_name 
from employees 
limit 100;
select * from new_one
limit 100;

drop table new_one;

