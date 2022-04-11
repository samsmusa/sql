use employees;

SELECT 
    *
FROM
    salaries
ORDER BY salary DESC
LIMIT 10;

SELECT 
    *, SUM(salary) as total_salary, COUNT(distinct emp_no ) as total_record
FROM
    salaries;