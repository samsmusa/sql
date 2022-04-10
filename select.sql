SELECT 
    first_name AS name
FROM
    employees;
    
SELECT 
    first_name AS f_name, 
    last_name AS l_name
FROM
    employees;
    
    
SELECT 
    first_name AS name
FROM
    employees
WHERE
    first_name = 'denis';
    
    
SELECT 
    *
FROM
    employees
WHERE
    first_name = 'denis';
    

SELECT 
    *
FROM
    employees
WHERE
    first_name = 'richard'
        or first_name = 'denis';



SELECT 
    *
FROM
    employees
WHERE
    last_name = 'denis';
select 
	*
from 
	employees
where
	last_name = 'denis'
		and
	(gender = 'm'
		or
	gender = 'f');
    
    
SELECT 
    *
FROM
    employees
WHERE
    first_name = 'cathie'
        OR first_name = 'mark'
        OR first_name = 'nathan';
        
SELECT 
    *
FROM
    employees
WHERE
    first_name IN ('cathie' , 'mark', 'nathan');
    
    
    
SELECT 
    *
FROM
    employees
WHERE
    first_name NOT IN ('cathie' , 'mark', 'nathan') ;
    


SELECT 
    *
FROM
    employees
WHERE
    first_name LIKE ('mark%');
    
    
SELECT 
    *
FROM
    employees
WHERE
    hire_date BETWEEN '1990-01-01' AND '2000-01-01';
    


SELECT 
    *
FROM
    employees
WHERE
    YEAR(hire_date) = '1990';
    
    
SELECT 
    *
FROM
    employees
WHERE
    first_name BETWEEN 'x' AND 'y';
    
    
    
SELECT DISTINCT
    gender
FROM
    employees;
    
SELECT 
    COUNT(DISTINCT gender)
FROM
    employees;


SELECT 
    count(*)  
FROM
    employees
WHERE
    gender IS not NULL;



SELECT 
    *
FROM
    employees
ORDER BY first_name , last_name ASC;


SELECT 
    *
FROM
    employees
ORDER BY first_name asc, last_name desc;


SELECT 
    first_name, gender, COUNT(first_name) AS val
FROM
    employees
GROUP BY first_name
ORDER BY first_name ASC;


SELECT 
    *
FROM
    employees
HAVING hire_date >= '2000-01-01';

SELECT 
    *
FROM
    employees
WHERE
    hire_date >= '2000-01-01';


SELECT 
    *
FROM
    employees
WHERE
    COUNT(first_name) > 240
GROUP BY first_name;


SELECT 
    first_name, count(first_name)
FROM
    employees
GROUP BY first_name
HAVING COUNT(first_name) > 240;

SELECT 
    first_name, COUNT(first_name), hire_date
FROM
    employees
WHERE
    hire_date > '1999-01-01'
GROUP BY first_name
HAVING COUNT(first_name) < 200;


select * from salaries;

SELECT 
    emp_no, salary
FROM
    salaries
ORDER BY salary DESC
limit 10;