CREATE TABLE Departments (
    dept_no VARCHAR  NOT NULL ,
    dept_name VARCHAR  NOT NULL ,
    CONSTRAINT pk_Departments PRIMARY KEY (
        dept_no
    )
)



CREATE TABLE Dept_emp (
    emp_no INTEGER  NOT NULL ,
    dept_no VARCHAR  NOT NULL ,
    CONSTRAINT pk_Dept_emp PRIMARY KEY (
        emp_no
    )
)

CREATE TABLE Dept_manager (
    dept_no VARCHAR  NOT NULL ,
    emp_no INTEGER  NOT NULL 
)

CREATE TABLE Employees (
    emp_no INTEGER  NOT NULL ,
    emp_title_id VARCHAR  NOT NULL ,
    birth_date VARCHAR  NOT NULL ,
    first_name VARCHAR  NOT NULL ,
    last_name VARCHAR  NOT NULL ,
    sex VARCHAR  NOT NULL ,
    hire_date VARCHAR  NOT NULL ,
    CONSTRAINT pk_Employees PRIMARY KEY (
        emp_title_id
    )
)



CREATE TABLE Salaries (
    emp_no INTEGER  NOT NULL ,
    salary INTEGER  NOT NULL 
)



CREATE TABLE Titles (
    title_id VARCHAR  NOT NULL ,
    title VARCHAR  NOT NULL 
)

-- IMPORTED DATA by right clicking on the table. click on import/export data. Change export to import. Click on what file you want to import. DONE
-- IMPORTED departments check
-- IMPORTED dept_emp check
-- IMPORTED dept_manager check
-- IMPORTED employees check
-- IMPORTED salaries check
-- IMPORTED titles check

