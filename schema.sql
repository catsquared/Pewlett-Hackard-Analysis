-- Create tables for the database PH-EmployeeDB
CREATE TABLE departments(
	dept_no VARCHAR(4) NOT NULL,
	dept_name VARCHAR(40) NOT NULL,
	PRIMARY KEY (dept_no),
	UNIQUE (dept_name)
);

CREATE TABLE employees(
	emp_no VARCHAR NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	gender VARCHAR NOT NULL,
	hire_date DATE NOT NULL,
	
	PRIMARY KEY (emp_no)

);

CREATE TABLE dept_manager(
	dept_no VARCHAR(4) NOT NULL,
	emp_no VARCHAR NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL,
	
	PRIMARY KEY (emp_no, dept_no),
	
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
	
);

CREATE TABLE salaries(
	emp_no VARCHAR NOT NULL,
	salary INT NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL,
	
	PRIMARY KEY (emp_no),
	
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
	
);

CREATE TABLE dept_emp(
	emp_no VARCHAR NOT NULL,
	dept_no VARCHAR NOT NULL
	from_date DATE NOT NULL,
	to_date DATE NOT NULL
	
	PRIMARY KEY (emp_no),
	
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)

);

CREATE TABLE titles(
	emp_no VARCHAR NOT NULL,
	title VARCHAR NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL,
	
	PRIMARY KEY (emp_no),
	
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

