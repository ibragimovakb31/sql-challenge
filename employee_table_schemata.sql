CREATE TABLE departments (
       dept_no VARCHAR not null,
       dept_name VARCHAR not null
);

 CREATE TABLE Employees(
     emp_no INT,
     emp_title_id VARCHAR,
     birth_date DATE,
     first_name VARCHAR,
     last_name VARCHAR,
     sex VARCHAR,
     hire_date DATE,
     dept_name VARCHAR
);

 CREATE TABLE dept_emp (
    emp_no INT,
    dept_no VARCHAR,
    dept_name VARCHAR
);
  CREATE TABLE dept_manager (
     dept_no VARCHAR,
     emp_no INT,
     dept_name VARCHAR
);

CREATE TABLE salaries (
     emp_no INT,
     salary INT,
     dept_name VARCHAR
);

CREATE TABLE titles (
     title_id VARCHAR,
     title VARCHAR,
     dept_name VARCHAR

);


  