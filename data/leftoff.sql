SELECT * FROM departments

SELECT * FROM dept_emp

SELECT * FROM dept_manager

SELECT * FROM employees

SELECT * FROM salaries

SELECT * FROM titles




CREATE TABLE Dept_emp (
    emp_no INTEGER  NOT NULL ,
    dept_no VARCHAR  NOT NULL 
    )
	
DROP TABLE employees;	

CREATE TABLE Employees (
    emp_no INTEGER  NOT NULL ,
    title_id VARCHAR  NOT NULL ,
    birth_date VARCHAR  NOT NULL ,
    first_name VARCHAR  NOT NULL ,
    last_name VARCHAR  NOT NULL ,
    sex VARCHAR  NOT NULL ,
    hire_date VARCHAR  NOT NULL ,
    CONSTRAINT pk_Employees PRIMARY KEY (
        title_id
    )
)

CREATE TABLE Employees (
    emp_no INTEGER  NOT NULL ,
    title_id VARCHAR  NOT NULL ,
    birth_date VARCHAR  NOT NULL ,
    first_name VARCHAR  NOT NULL ,
    last_name VARCHAR  NOT NULL ,
    sex VARCHAR  NOT NULL ,
    hire_date VARCHAR  NOT NULL
	)
	

