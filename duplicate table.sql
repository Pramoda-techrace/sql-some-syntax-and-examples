use employees;
insert into dept_manager_dup values ('110228','d003','1992-03-21','9999-01-01');
insert into departments_dup values ('dg009','customer service');
select * from dept_manager_dup
order by dept_no asc;
select * from departments_dup
order by dept_no;

select * from dept_manager_dup as a
join departments_dup as b on a.dept_no = b.dept_no 
group by a.emp_no
order by a.dept_no;

select * from dept_manager_dup as a
join departments_dup as b on a.dept_no = b.dept_no 
order by a.dept_no;




