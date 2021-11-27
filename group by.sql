SELECT 
    salary, COUNT(salary) AS emps_woth_same_salary
FROM
    salaries
WHERE
    salary > 80000
GROUP BY salary
order  by salary;

SELECT 
    *
FROM
    salaries;