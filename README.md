# Research_Prj_1980to1990

## About the Project

I was hired as a new data engineer at Pewlett Hackard, and my task is a research project on employees of the corporation from the 1980s and 1990s. All that remains from the database of employees from that period are six CSV files. These files are `departments.csv`, `dept_emp.csv`, `dept_manager.csv`, `employees.csv`, `salaries.csv`, and `titles.csv`. Each CSV file will be converted to tables in SQL and have relationships with one another. The following image displays the tables and their relationships.

![Work Diagram](https://github.com/samuelroiz/Research_Prj_1980to1990/blob/main/Images/Diagram/diagram_sql.png)

The image shows a total of six relationships. The highlighted blue variables in the table are known as the primary keys, and the rest are either foreign keys or numeric or string types.

## Raw Data Tables

### Departments Table

This table displays the department number and its name, depending on the department number. There are only nine departments in total, and depending on the department's row, it will give the department number. For example, 'Production' in the 'dept_name' column is in row four, so it will have a department number labeled 'd004'. Also, the column 'dept_no' is set as a primary key. If you look in the work diagram, you will find a highlighted blue variable, and 'dept_no' is one of them.

![Departments Table](https://github.com/samuelroiz/Research_Prj_1980to1990/blob/main/Images/Raw%20Table/departments_table.png)

### Departments Employee Table

This table displays the employee's number and department number. The employee's number, known as 'emp_no', is a foreign key from the 'Employees Table'. The department number, 'dept_no', is a foreign key from the 'Departments Table'.

![Departments Employee Table](https://github.com/samuelroiz/Research_Prj_1980to1990/blob/main/Images/Raw%20Table/dept_emp_table.png)

### Departments Manager Table

This image displays the 'Departments Manager Table' and its relationships with the 'Departments Table' and the 'Employees Table'. Similar to the previous table, it has a foreign key of 'dept_no' and 'emp_no' from the two tables.

![Departments Manager Table](https://github.com/samuelroiz/Research_Prj_1980to1990/blob/main/Images/Raw%20Table/dept_manager_table.png)

### Employee Table

This table displays the employee's information such as gender, hire date, name, and title. The table has a primary key of 'emp_no', known as the employee's number. It has one foreign key of 'title_id' from the 'Titles Table', where 'title_id' is a primary key.

![Employee Table](https://github.com/samuelroiz/Research_Prj_1980to1990/blob/main/Images/Raw%20Table/employees_table.png)

### Salaries Table

This table only holds a variable and a foreign key. The foreign key is the employee's number, connected to the 'Employee Table'.

![Salaries Table](https://github.com/samuelroiz/Research_Prj_1980to1990/blob/main/Images/Raw%20Table/salaries_table.png)

### Titles Table

The final raw table holds the title and the title id. The title id is a primary key. The 'Employee Table' is connected to the title id.

![Titles Table](https://github.com/samuelroiz/Research_Prj_1980to1990/blob/main/Images/Raw%20Table/titles_table.png)

## Examples of SQL Converted Tables 

### Multiple Departments Only Table

This image displays an example of filtering the table for specific departments only. As shown in the image, it is filtered to include 'Sales' and 'Development' only.

![Multiple Departments Only Table](https://github.com/samuelroiz/Research_Prj_1980to1990/blob/main/Images/development_sales_departments_employees_info_table.png)

![Employee Department Info Table](https://github.com/samuelroiz/Research_Prj_1980to1990/blob/main/Images/employee_department_info_table.png)

![Employee Info w/ Salary Table](https://github.com/samuelroiz/Research_Prj_1980to1990/blob/main/Images/employee_info_table.png)

![Last Name Count Table](https://github.com/samuelroiz/Research_Prj_1980to1990/blob/main/Images/last_name_count_table.png)

![Manager Department Info Table](https://github.com/samuelroiz/Research_Prj_1980to1990/blob/main/Images/manager_department_info_table.png)

![Name Search Example Table](https://github.com/samuelroiz/Research_Prj_1980to1990/blob/main/Images/name_search_hercules_b_example_table.png)

![One Department Example Table](https://github.com/samuelroiz/Research_Prj_1980to1990/blob/main/Images/sales_department_employees_info.png)

## Contributing

Please read [CONTRIBUTING.md](https://gist.github.com/samuelroiz/1af49ec9eea365bc845ba04c5071a976) for details on our code of conduct, and the process for submitting pull requests to us.

## Versioning

We use [SemVer](http://semver.org/) for versioning. For the versions available, see the [tags on this repository](https://github.com/your/project/tags).

## Authors

* **Samuel Roiz** - *Data clean, Analyzed Data, Math Model* - [Profile](https://github.com/samuelroiz)

See also the list of [contributors](https://github.com/samuelroiz) who participated in this project.

## License

This project is licensed under the MIT License - see the [LICENSE.md](https://gist.github.com/samuelroiz/1af49ec9eea365bc845ba04c5071a976) file for details.

## Acknowledgments

* Pewlett Hackard
* USC Data Visualization
* CSUN Mathematics
