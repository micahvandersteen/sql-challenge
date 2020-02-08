-- ================================CREATING TABLES================================

-- creating departments table
create table departments(
	department_no VARCHAR (50) not null,
	department_name VARCHAR(50) not null,
	PRIMARY KEY (department_no)
	);

-- creating departments & employees table
create table dept_emp(
	employee_no INT not null, 
	department_no VARCHAR (30) not null, 
	from_date VARCHAR (30) not null,
	to_date VARCHAR (30),
	FOREIGN KEY (employee_no) REFERENCES employees(employee_no),
	FOREIGN KEY (department_no) REFERENCES departments(department_no)
	);

-- creating department manager table
create table dept_manager(
	department_no VARCHAR (30) not null,
	employee_no INT not null,
	from_date VARCHAR (30) not null,
	to_date VARCHAR (30),
	FOREIGN KEY (employee_no) REFERENCES employees(employee_no)
	);

-- creating employee table
create table employees(
	employee_no INT not null,
	birth_date VARCHAR (30) not null,
	first_name VARCHAR (30) not null,
	last_name VARCHAR (30) not null,
	gender VARCHAR (30) not null,
	hire_date VARCHAR (30) not null,
	PRIMARY KEY (employee_no)
	);

-- creating salaries table
create table salaries(
	employee_no INT not null,
	salary INT not null,
	from_date VARCHAR (30) not null,
	to_date VARCHAR (30),
	FOREIGN KEY (employee_no) REFERENCES employees(employee_no)
	);

-- creating job titles table
create table titles(
	employee_no INT not null,
	title VARCHAR (50) not null,
	from_date VARCHAR (30) not null, 
	to_date VARCHAR (30),
	FOREIGN KEY (employee_no) REFERENCES employees(employee_no)
	);

-- ============================READING IN DATA=======================================

-- departnents data
copy departments from '/Users/micahvandersteen/departments.csv'
with (format CSV, header);

-- employees data
copy employees from '/Users/micahvandersteen/employees.csv'
with (format CSV, header);

-- department-employee data
copy dept_emp from '/Users/micahvandersteen/dept_emp.csv'
with (format CSV, header);

-- department manager data
copy dept_manager from '/Users/micahvandersteen/dept_manager.csv'
with (format CSV, header);

-- salaries data
copy salaries from '/Users/micahvandersteen/salaries.csv'
with (format CSV, header);

-- job titles data
copy titles from '/Users/micahvandersteen/titles.csv'
with (format CSV, header);








