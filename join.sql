create table departments_dup (
dept_no varchar(4) not null,
dept_name varchar(40) not null
);


insert into departments_dup select * from departments;

select * from departments_dup;

create table dept_manager_dup (
 emp_no int not null,
 dept_no varchar(4) not null,
 from_date date not null,
 to_date date not null,
 foreign key(emp_no) references employees.employees(emp_no) on delete cascade,
 foreign key(dept_no) references employees.departments(dept_no) on delete cascade
 );
 
 
 SELECT 
    *
FROM
    dept_manager;

SELECT 
    *
FROM
    departments_dup;
 
 alter table dept_manager_dup
 add primary key(emp_no, dept_no);
 
 
 insert into dept_manager_dup select * from dept_manager;
 
 SELECT 
    *
FROM
    dept_manager_dup
    order by dept_no;
 
 
 -- inner join --
  SELECT 
    m.emp_no, m.dept_no, d.dept_no, d.dept_name
FROM
    dept_manager_dup m
        INNER JOIN
    departments_dup d ON m.dept_no = d.dept_no
    order by d.dept_no;