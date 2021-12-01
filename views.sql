use employees;
select emp_no,from_date,to_date, count(emp_no) n  from dept_emp
group by emp_no
having n > 1;

CREATE OR REPLACE VIEW deptL_emp_latest_date AS
    SELECT 
        emp_no, MAX(from_date), MAX(to_date)
    FROM
        dept_emp
    GROUP BY emp_no;
SELECT 
        emp_no, MAX(from_date), MAX(to_date)
    FROM
        dept_emp
    GROUP BY emp_no;
create or replace view average_salary_emp as
select s.emp_no, round(avg(s.salary),2) from salaries s
join dept_manager d on d.emp_no = s.emp_no;


