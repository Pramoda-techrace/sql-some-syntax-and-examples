SELECT 
    e.emp_no AS employee_id,
    MIN(e.emp_no) AS dept_code,
    (SELECT 
            d.emp_no
        FROM
            dept_manager d
        WHERE
            d.emp_no = 110022) AS manager_id
FROM
    employees e
        JOIN
    dept_emp de ON e.emp_no = de.emp_no
WHERE
    e.emp_no <= 10020
GROUP BY e.emp_no
ORDER BY e.emp_no ASC;
SELECT 
    a.*
FROM
    (SELECT 
        e.emp_no, de.dept_no
    FROM
        employees e
    JOIN dept_emp de ON de.emp_no = e.emp_no
    WHERE
        e.emp_no <= 10020
    GROUP BY e.emp_no
    ORDER BY e.emp_no) AS a 
UNION SELECT 
    b.*
FROM
    (SELECT 
        e.emp_no, de.dept_no
    FROM
        employees e
    JOIN dept_emp de ON de.emp_no = e.emp_no
    WHERE
        e.emp_no BETWEEN 10021 AND 10040
    GROUP BY e.emp_no
    ORDER BY e.emp_no) AS b;

















