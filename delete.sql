use employees;


-- delete -- 
/*
Remove the department number 10 record from the "departments" table
*/
-- solution --
select * from departments;
delete from departments where dept_no='d010';