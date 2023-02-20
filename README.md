# sql-challenge
This respository examines information about employees hired at Pewlett Hackard during the 1980s and 1990s. Code to assess specific questions about employees, their jobs, their salaries, their name relationships, their hiring dates, etc. is coded in .sql. 

## Data Modeling
Table relationships for the database are mapped into a 3NF entity relationship diagram (ERD) in the .png file labelled ERD_employeedata.png. The data in these 6 tables is found in the data folder. Data is in .csv file format.

## Data Engineering
The .sql code to import the CSV files into a SQL database is stored in the creating_tables.sql file. This code establishes the tables in the order they should be created. It codes primary and secondary keys that correspond to information in each of the 6 .csv files in the data folder. The tables are named according to the corresponding .csv files, for ease of importing the correct data into the correct file. 

The following tables hold the following information.

<strong>departments</strong>
<ul>
  <li>dept_no - Department ID number (5 characters long), primary key</li>
  <li>dept_name - Name of the department (varchar/string)</li>
</ul>

<strong>titles</strong>
<ul>
  <li>title_id - Employee job ID number (5 characters long), primary key</li>
  <li>title - Employee job title (varchar/string)</li>
</ul>

<strong>employees</strong>
<ul>
  <li>emp_no - Employee ID number (5 characters long), primary key</li>
  <li>emp_title - Employee job ID number (5 characters long), foreign key</li>
  <li>birth_date - Date of employee's birth (date)</li>
  <li>first_name - Employee first name (varchar/string)</li>
  <li>last_name - Employee last name (varchar/string)</li>
  <li>sex - Employee sex (5 characters long)</li>
  <li>hire_date - Date of employee's hiring at Pewlett Hackard (date)</li>
</ul>

<strong>dept_employees/Department Employees</strong>
<ul>
  <li>emp_no - Employee ID number (5 characters long), foreign key</li>
  <li>dept_no - Department ID number (5 characters long), foreign key</li>
</ul>

<strong>dept_manager/Department Managers</strong>
<ul>
  <li>dept_no - Department ID number (5 characters long), foreign key</li>
  <li>emp_no - Employee ID number (5 characters long), foreign key</li>
</ul>

<strong>salaries</strong>
<ul>
  <li>emp_no - Employee ID number (5 characters long), foreign key</li>
  <li>salary - Employee salary (integer)</li>
</ul>

Please review the ERD .png file in the repository for more detail about the table relationships.

## Data Analysis
The .sql code to analyze the established employee database is stored in the emp_queries.sql file. This code runs queries to answer the following questions:

<ol>
  <li>List the employee number, last name, first name, sex, and salary of each employee hired at Pewlett Hackard during the 1980s and 1990s.</li>
  <li>List the first name, last name, and hire date for Pewlett Hackard employees who were hired in 1986.</li>
  <li>List the manager of each Pewlett Hackard department along with their department number, department name, employee number, last name, and first name.</li>
  <li>List the department number for each Pewlett Hackard employee along with that employee’s employee number, last name, first name, and department name.</li>
  <li>List first name, last name, and sex of each Pewlett Hackard employee whose first name is Hercules and whose last name begins with the letter B.</li>
  <li>List each employee in the Pewlett Hackard Sales department, including their employee number, last name, and first name.</li>
  <li>List each employee in the Pewlett Hackard Sales and Development departments, including their employee number, last name, first name, and department name.</li>
  <li>List the frequency counts, in descending order, of all the Pewlett Hackard employee last names.</li>
</ol>
