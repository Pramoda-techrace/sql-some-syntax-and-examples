delete from departments_dup
where emp_no = '110228';
delete from departments_dup
where dept_no = 'd009';
insert into dept_manager_dup
values ('110228','d003','1992-03-21','9999-01-01');
insert into departments_dup
values ('d009', 'customer service');
select * from  dept_manager_dup as a
left join departments_dup as d on a.dept_no = d.dept_no
where dept_name is null
order by a.emp_no desc;

#excersise for left join

select e.emp_no,e.first_name, e.last_name,d.dept_no,d.from_date from employees as e
left join dept_manager as d on e.emp_no = d.emp_no
where e.last_name = 'markovitch'
order by d.dept_no desc,e.emp_no;
