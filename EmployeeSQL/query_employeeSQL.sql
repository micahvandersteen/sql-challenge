-- List the following details of each employee: 
-- employee number, last name, first name, gender, and salary.
-- employees

select 
	e.employee_no,
	e.last_name,
	e.first_name,
	e.gender,
	s.salary
from employees e
join salaries s
	on e.employee_no = s.employee_no
where salary is not null
;

--==================================================================================

-- List employees who were hired in 1986.

select 
	first_name,
	last_name,
	hire_date
from employees
where hire_date like '1986%'
;

-- ================================================================================

-- List the manager of each department with the following information: 
-- department number, department name, the manager's employee number, 
-- last name, first name, and start and end employment dates.

select 
	d.department_name,
	d.department_no,
	dm.employee_no,
	e.first_name,
	e.last_name,
	de.from_date,
	de.to_date
from departments d
join dept_manager dm
	on d.department_no = dm.department_no
join dept_emp de
	on dm.employee_no = de.employee_no
join employees e
	on de.employee_no = e.employee_no
;

-- ================================================================================

-- List the department of each employee with the following information: 
-- employee number, last name, first name, and department name.

select 
	d.department_name,
	e.first_name,
	e.last_name,
	e.employee_no
from departments d
join dept_emp de
	on de.department_no = d.department_no
join employees e
	on de.employee_no = e.employee_no
;


-- ================================================================================

-- List all employees whose first name is "Hercules" and last names 
-- begin with "B."

select 
	first_name,
	last_name
from employees
where first_name = 'Hercules'
	and last_name like 'B%'
;

-- ================================================================================

-- List all employees in the Sales department, including their employee number, 
-- last name, first name, and department name.

select 
	d.department_name,
	e.employee_no,
	e.first_name,
	e.last_name
from departments d
join dept_emp de
	on de.department_no = d.department_no
join employees e
	on e.employee_no = de.employee_no
where department_name = 'Sales'
;
		
-- ================================================================================

-- List all employees in the Sales and Development departments, including their 
-- employee number, last name, first name, and department name.

select 
	d.department_name,
	e.employee_no,
	e.first_name,
	e.last_name
from departments d
join dept_emp de
	on de.department_no = d.department_no
join employees e
	on e.employee_no = de.employee_no
where department_name in ('Sales', 'Development')
;

-- ================================================================================

-- descending order, list the frequency count of employee last names, i.e., 
-- how many employees share each last name.

select 
	last_name,
	count(last_name) as frequency_last_name
from employees
group by last_name
order by frequency_last_name desc
;















