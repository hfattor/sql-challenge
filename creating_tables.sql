-- Create a new table - Departments
CREATE TABLE departments (
  dept_no CHAR(5) PRIMARY KEY,
  dept_name VARCHAR NOT NULL
);

-- Query all fields from the table
SELECT *
FROM departments;

-- Insert data into the table
INSERT INTO departments (dept_no, dept_name)
VALUES 

-- Query only the `dept_name` field
SELECT dept_name
FROM departments;

-- Create a new table - Ttitles
CREATE TABLE titles (
  title_id CHAR (5) PRIMARY KEY,
  title VARCHAR NOT NULL
);

-- Insert data into the table
COPY titles(title_id, title)
FROM 'C:\Users\hfatt\Documents\GitHub\sql-challenge\data\departments.csv'
DELIMITER ','
CSV HEADER; 

-- Query all fields from the table
SELECT *
FROM titles;

-- Create a new table - Employees
CREATE TABLE employees (
  emp_no INTEGER PRIMARY KEY,
  emp_title CHAR(5) NOT NULL,
  FOREIGN KEY (emp_title) REFERENCES titles(title_id),
  birth_date date,
  first_name VARCHAR NOT NULL,
  last_name VARCHAR NOT NULL,
  sex VARCHAR(5),
  hire_date date
);

-- Insert data into the table
INSERT INTO employees (emp_no, emp_title, birth_date, first_name, last_name, sex, hire_date)
VALUES 

-- Query all fields from the table
SELECT *
FROM employees;

-- Create a new table - Department Employees
CREATE TABLE dept_employees (
  emp_no INTEGER NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
  dept_no CHAR(5) NOT NULL,
  FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

-- Insert data into the table
INSERT INTO dept_employees (emp_no, dept_no)
VALUES 

-- Query all fields from the table
SELECT *
FROM dept_employees;

-- Create a new table - Department Manager
CREATE TABLE dept_manager (
  dept_no CHAR(5) NOT NULL,
  FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
  emp_no INTEGER NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

-- Insert data into the table
INSERT INTO dept_manager (dept_no, emp_no)
VALUES 

-- Query all fields from the table
SELECT *
FROM dept_manager;

-- Create a new table - Salaries
CREATE TABLE salaries (
  emp_no INTEGER NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
  salary INTEGER NOT NULL
);

-- Insert data into the table
INSERT INTO salaries (emp_no, salary)
VALUES 

-- Query all fields from the table
SELECT *
FROM salaries;