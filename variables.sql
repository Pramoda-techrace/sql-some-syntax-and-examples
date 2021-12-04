set @v_emp_no = 0;
call emp_info('aruna','journel', @v_emp_no);
select @v_emp_no;