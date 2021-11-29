insert into emp_manager select u.* from 
((select a.* from 
	(select 
		e.emp_no, 
        de.dept_no, 
		(select emp_no from dept_manager  where emp_no = 110022)
		from employees e
        join dept_emp de on de.emp_no = e.emp_no
		where e.emp_no <=10020
		group by e.emp_no
		order by e.emp_no
        limit 100) as a
union select b.* from 
	(select 
		e.emp_no,
        de.dept_no ,
        (select emp_no from dept_manager where emp_no = 110039)
        from employees e
        join dept_emp de on de.emp_no = e.emp_no
		where e.emp_no between 10021 and 10040
		group by e.emp_no
		order by e.emp_no
        limit 100) as b
union select c.* from 
	 (select 
		e.emp_no, 
		de.dept_no, 
		(select emp_no from dept_manager where emp_no = 110039)
		from employees e
        join dept_emp de on de.emp_no = e.emp_no
		where e.emp_no = 110022
		group by e.emp_no
		order by e.emp_no
        limit 100) as c
union select d.* from 
	 (select 
		e.emp_no, 
		de.dept_no, 
		(select emp_no from dept_manager where emp_no = 110022)
		from employees e
        join dept_emp de on de.emp_no = e.emp_no
		where e.emp_no = 110039
		group by e.emp_no
		order by e.emp_no
        limit 100) as d
)) as u
;

select * from emp_manager;