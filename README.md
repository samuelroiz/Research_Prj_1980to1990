# Research_Prj_1980to1990

## About the Project...
Hired as a new data engineer at Pewlett Hackard and given a task is a research project on employees of the corporation from the 1980s and 1990s. All that remains from the database of employees from that period is six CSV files. The six CVS files are departments.csv, dept_emp.csv, dept_manager.csv, employees.csv, salaries.csv, and titles.csv. Each CVS file will be converted to tables in SQL and have relations with one and other. The following image displays the tables and the relations with each other. 

![Work Diagram](https://github.com/samuelroiz/Research_Prj_1980to1990/blob/main/Images/Diagram/diagram_sql.png)

The following image, shows there are a total of six relations. The highlighted blue variables in the table are known as the primary keys and the rest are either foreign keys or numeric or strings. 

## Raw Data Table's

### Departments Table

The following table displays the department number and its name depending on the department number. There are only nine departments total and depending on the department's row will give the departments number. Look at 'Production' in the 'dept_name' column. It is in row four so it will have a department number label of 'd004'. Also, the column 'dept_no' will be set as a primary key. If you look in the work diagram, you will find a highlighted blue variable and 'dept_no' is one of them. 

![Departments Table](https://github.com/samuelroiz/Research_Prj_1980to1990/blob/main/Images/Raw%20Table/departments_table.png)

### Departments Employee Table Example

The following table displays the employee's number and department number. The employee's number known as 'emp_no' is a foreign key of the 'Employees Table' employee number. The department number, 'dept_no' is a foreign key from the 'Departments Table'. 

![Departments Employee Table](https://github.com/samuelroiz/Research_Prj_1980to1990/blob/main/Images/Raw%20Table/dept_emp_table.png)

### Departments Manager Table

The following image displays the 'Departments Manager Table' and has relations with the 'Departments Table' and the 'Employees Table'. Similar to the previous table, it has a foreign key of the 'dep_no' and 'emp_no' from the two tables. 

![Departments Manager Table](https://github.com/samuelroiz/Research_Prj_1980to1990/blob/main/Images/Raw%20Table/dept_manager_table.png)

### Employee Table

The following table displays the employee's information such as gender, hire date, name, and title. The table has a primary key of the 'emp_no' is known as the employee's number. It has one foreign key of the 'title_id' and its 'title_id' primary key located in the 'Titles Table'.  

![Employee Table](https://github.com/samuelroiz/Research_Prj_1980to1990/blob/main/Images/Raw%20Table/employees_table.png)

### Salaries Table

The following table only holds a variable and a foreign key. The foreign key is the employee's number connected to the 'Employee Table'. 

![Salaries Table](https://github.com/samuelroiz/Research_Prj_1980to1990/blob/main/Images/Raw%20Table/salaries_table.png)

### Titles Table

The final raw table holds the title and the title id. The title id is a primary key. The 'Employee Table' is connected to the title id. 

![Titles Table](https://github.com/samuelroiz/Research_Prj_1980to1990/blob/main/Images/Raw%20Table/titles_table.png)

## Examples of SQL Convert Tables 

### Multi. Dep. Table
![Multiple Departments Only Table](https://github.com/samuelroiz/Research_Prj_1980to1990/blob/main/Images/development_sales_departments_employees_info_table.png)

The following image displays an example of filtering the table of specific departments only. As in the image, it is filitred to have 'Sales' and 'Development' only. 

![Employee Department Info Table](https://github.com/samuelroiz/Research_Prj_1980to1990/blob/main/Images/employee_department_info_table.png)

![Employee Info w/ Salary Table](https://github.com/samuelroiz/Research_Prj_1980to1990/blob/main/Images/employee_info_table.png)

![Last Name Count Table](https://github.com/samuelroiz/Research_Prj_1980to1990/blob/main/Images/last_name_count_table.png)

![Manager Department Info Table](https://github.com/samuelroiz/Research_Prj_1980to1990/blob/main/Images/manager_department_info_table.png)

![Name Search Example Table](https://github.com/samuelroiz/Research_Prj_1980to1990/blob/main/Images/name_search_hercules_b_example_table.png)

![One Department Example Table](https://github.com/samuelroiz/Research_Prj_1980to1990/blob/main/Images/sales_department_employees_info.png)
