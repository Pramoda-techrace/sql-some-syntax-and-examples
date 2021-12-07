select  es.* from emp_manager es
join emp_manager ed on es.emp_no = ed.manager_no
where ed.emp_no in (select manager_no from emp_manager);