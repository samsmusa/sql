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




# excresice
-- where excresise --
/* 
Select all people from the "employees" table whose first name is "elvis"
*/
-- Solutions --
SELECT 
    *
FROM
    employees
WHERE
    first_name = 'elvis';

-- AND --
/*
Retrieve a list with all female employees whose first name is kellie
*/
-- solution -- 
SELECT 
    *
FROM
    employees
WHERE
    first_name = 'kellie' AND gender = 'f';
    
-- or --
/* 
Retrieve a list with all employees whose first name is either kellie or aruna.
*/
-- solution --
SELECT 
    *
FROM
    employees
WHERE
    first_name = 'kellie'
        OR first_name = 'aruna';
        
        
-- operator precedence -- 
/*
Retrieve a list with all female empliyees whose first name is either kellie or aruna
*/
SELECT 
    *
FROM
    employees
WHERE
    gender = 'f'
        AND (first_name = 'kellie'
        OR first_name = 'aruna');
        
-- IN Not IN --
/*
Use the IN operator to select all individuals from the "employees" table, whose first name is either "denis", or "elvis"
*/
-- solution --
SELECT DISTINCT
    *
FROM
    employees
WHERE
    first_name IN ('denis' , 'elvis');
    
-- NOT IN --
/*
Extract all records from the 'employees' table, aside from those with employees named John, Mark, or Jacob.
*/
-- solution --
SELECT 
    *
FROM
    employees
WHERE
    first_name NOT IN ('John' , 'Mark', 'Jacob');
    
    
-- LIKE -- 
/*
Working with the 'employees' table, use the LIKE operator to select the data about all individuals, whose first name starts with
'Mark"; specify that the name can be succeeded by any sequence of characters. Retrieve a list with all employees who have been hired
in the year 2000.
Retrive a list with all employee number is written with 5 characters, and start with "1000".
*/
SELECT DISTINCT
    *
FROM
    employees
WHERE
    first_name LIKE ('Mark%');
    
SELECT 
    *
FROM
    employees
WHERE
    hire_date LIKE ('2000%');
    
SELECT 
    *
FROM
    employees
WHERE
    YEAR(hire_date) = '2000';
    
SELECT 
    *
FROM
    employees
WHERE
    emp_no LIKE ('1000_');
    
-- wildcard character --
/*
Extract all individuals from the 'employees' table whose first name contains 'jack'
Once you have done that, extract another list containing the names of employees that do not contain 'jack'
*/
-- solution --
SELECT DISTINCT
    *
FROM
    employees
WHERE
    first_name LIKE ('%jack%');

SELECT 
    *
FROM
    employees
WHERE
    first_name NOT LIKE ('%jack%');
    
    
-- Between and --
/*
Select all the information from the "salaries" table regarding contracts from 66,000 to 70,000 dollars per year.
retrieve a list with all individuals whose employee number is not between '10004' and '10012'
Select the names of all departments with numbers between 'd003' and 'd006'
*/
-- solution --
SELECT 
    *
FROM
    salaries
WHERE
    salary BETWEEN '66000' AND '76000';
    
SELECT 
    *
FROM
    employees
WHERE
    emp_no NOT BETWEEN '10004' AND '10012';

SELECT 
    *
FROM
    departments
WHERE
    dept_no BETWEEN 'd002' AND 'd006';

-- IS NOT NULL -- 
/*
Select the names of all departments whose department number value is not null
*/
SELECT 
    *
FROM
    departments
WHERE
    dept_no IS NOT NULL;
    
-- comparison operator --
/*
Retrieve a list with data about all female employees who were hired in the year 2000 or after .
Extract a list with all employees salaries higher than $150,000 per annum.
*/
SELECT 
    *
FROM
    employees
WHERE
    YEAR(hire_date) >= '2000'
        AND gender = 'f';

SELECT 
    *
FROM
    employees
WHERE
    hire_date LIKE ('%200%')
        AND gender = 'f';
        
select * from salaries where salary > '150000';


-- aggregate function --
/*
How many annual contracts with a value higher than or equal to $100,000 have been registered in the salaries table?
How many managers do we have in the 'employees' database? use the star symbol(*) in your code to solve the exercise
*/
SELECT 
    salary, COUNT(salary)
FROM
    salaries
WHERE
    salary >= 100000;
SELECT 
    COUNT(*)
FROM
    salaries
WHERE
    salary >= 100000;
    
select count(*) from dept_manager;


-- order by --
/*
select all data from the 'employees' table, ordering it by 'hire date' in descrending order
*/
SELECT 
    *
FROM
    employees
ORDER BY hire_date DESC;

-- Using aliases --
/*
Write a query that obtians two columns. the first column must contain annual salaries higher than 80,000 dollars.
the second column, renamed to 'emps_with_same_salarY" . musat show the number of employees contracted to that salary. lastly,
sort the output bu the first column.
*/
SELECT 
    salary, COUNT(emp_no) AS emps_with_same_salary
FROM
    salaries
WHERE
    salary > 80000
GROUP BY salary
ORDER BY salary;


-- having --
/*
select all employees whose average salary is higher than $120,00 per annum.
*/
SELECT 
    *, AVG(salary)
FROM
    salaries
GROUP BY emp_no
HAVING AVG(salary) > 120000;

