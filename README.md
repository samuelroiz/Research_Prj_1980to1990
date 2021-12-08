# Research_Prj_1980to1990

## About the Project...
Hired as a new data engineer at Pewlett Hackard and given a task is a research project on employees of the corporation from the 1980s and 1990s. All that remains from the database of employees from that period is six CSV files. The six cvs file are departments.csv, dept_emp.csv, dept_manager.csv, employees.csv, salaries.csv, and titles.csv. Each cvs file will be converted to tables in sql and have relations with one and other. In the following image displays the tables and the relations with each other. 

![Work Diagram](https://github.com/samuelroiz/Research_Prj_1980to1990/blob/main/Images/Diagram/diagram_sql.png)

In the following image, it shows there are a total of six relations. The highlighted blue variables in the table are known as the primary keys and the rest are either foriegn keys or numeric or strings. 

## Raw Data Table's

### Departments Table
The following table displays the department number and its name depending on the department number. There are only nine departments total and depending on the departments row will give the departments number. Look at 'Production' in 'dept_name' column. It is in row four so it will have a department number label of 'd004'. Also the column 'dept_no' will be set as a primary key. If you look in the work diagram, you will find a highlighted blue variable and 'dept_no' is one of them. 

![Departments Table](https://github.com/samuelroiz/Research_Prj_1980to1990/blob/main/Images/Raw%20Table/departments_table.png)

### Departments Employee Table Example

In the following table displays the employees number and its department number. The employees number known as 'emp_no' is a forigen key of the 'Employees Table' employee number. The department number, 'dept_no' is a foriegn key from the 'Departments Table'. 

![Departments Employee Table](https://github.com/samuelroiz/Research_Prj_1980to1990/blob/main/Images/Raw%20Table/dept_emp_table.png)

### Departments Manager Table

In the following image displays the 'Departments Manager Table' and has relations with the 'Departments Table' and the 'Employees Table'. Similarly to the previous table, it has a foriegn key of the 'dep_no' and 'emp_no' from the two tables. 

![Departments Manager Table](https://github.com/samuelroiz/Research_Prj_1980to1990/blob/main/Images/Raw%20Table/dept_manager_table.png)

### Employee Table

In the following table displays the Employee information such as gender, hire date, name, and others. The table has a primary key of the 'emp_no' which is known as the employees number. It has one foriegn key of the 'title_id'. The 'title_id' primary key is located in the 'Titles Table' and this is found below. 

![Employee Table](https://github.com/samuelroiz/Research_Prj_1980to1990/blob/main/Images/Raw%20Table/employees_table.png)

### Salaries Table

The following table only holds a variable and a foriegn key. The foriegn key is the employees number connected to the 'Employee Table'. 

![Salaries Table](https://github.com/samuelroiz/Research_Prj_1980to1990/blob/main/Images/Raw%20Table/salaries_table.png)

### Titles Table

The final raw table is holds the title and the titld id. The title id is a primary key and the 'Employee Table' is connected to the title id. 

![Titles Table](https://github.com/samuelroiz/Research_Prj_1980to1990/blob/main/Images/Raw%20Table/titles_table.png)
