

select * from departments_dup;

use employees;
SELECT 
    *
FROM
    employees
ORDER BY emp_no DESC
LIMIT 100;

select * from employees
limit 100;

select first_name,last_name, dept_no ,from_date from employees a 
join  dept_emp as d on d.emp_no=a.emp_no
limit 100;


alter table departments_dup
change column dept_no dept_no  char(4),
change column dept_name dept_name varchar(40);

select * from departments_dup
order by dept_no desc;

insert into departments_dup(dept_name) values ('public relations');

delete from departments_dup
where dept_no ='d002';

create table dept_manager_dup 
(
	emp_no int(11) not null,
    dept_no char(4),
    from_date date not null,
    to_date date
    );
insert into dept_manager_dup select * from dept_manager;

select * from dept_manager_dup;

insert into dept_manager_dup (emp_no,from_date) values 
(999904,'2017-01-01'),(999905,'2017-01-01'),(999906,'2017-01-01'),(999907,'2017-01-01')

DELETE FROM  dept_manager_dup
where dept_no = 'd001'; 

insert into departments_dup (dept_name) values ('public relations');

select * from departments_dup;
select * from dept_manager_dup;

delete from departments_dup
where dept_no ='d001';

select * from dept_manager_dup as a
inner join departments_dup as b on b.dept_no = a.dept_no;



