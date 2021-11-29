SELECT 
    *
FROM
    (SELECT 
        e.emp_no,
            e.first_name,
            e.last_name,
            NULL AS dept_no,
            NULL AS dept_name
    FROM
        employees e UNION ALL SELECT 
        NULL AS emp_no,
            NULL AS first_name,
            NULL AS last_name,
            m.dept_no,
            m.from_date
    FROM
        dept_manager m) AS a
ORDER BY - a.emp_no DESC; 


SELECT 
    *
FROM
    employees e
WHERE
    e.emp_no IN (SELECT 
            d.emp_no
        FROM
            dept_manager d);


SELECT 
    *
FROM
    dept_manager
WHERE
    emp_no IN (SELECT 
            emp_no
        FROM
            employees
        WHERE
            hire_date BETWEEN '1990-01-01' AND '1995-01-01');
            
select * from employees e 
where e.emp_no in (SELECT 
    t.emp_no
FROM
titles t
WHERE
    t.title= 'assistant engineer' );
    
select * from employees e 
where exists(SELECT 
    t.emp_no
FROM
titles t
WHERE t.emp_no = e.emp_no and 
    t.title= 'assistant engineer' );
    
    
    
    