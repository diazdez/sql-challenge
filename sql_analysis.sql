--1. List the following details of each employee: employee number, last name, first name, sex, and salary.
Select 
	employees.emp_no,
	employees.last_name,
	employees.first_name,
	employees.sex,
	s.salary
From Salaries as s
Inner Join Employees on
	Employees.emp_no = s.emp_no ;


--2. List first name, last name, and hire date for employees who were hired in 1986.
Select 
	first_name, 
	last_name, 
	hire_date 
from Employees 
Where hire_date >= '1986-01-01' AND hire_date <= '1986-12-31';


--3. List the manager of each department with the following information: 
--  department number, department name, the manager's employee number, last name, first name.

Select
	Dept_Manager.dept_no, 
	Departments.dept_name, 
	Dept_Manager.emp_no,
	Employees.last_name,
	Employees.first_name
From Dept_Manager 
Inner Join Departments on Dept_Manager.dept_no=Departments.dept_no
Inner Join Employees on (employees.emp_no=Dept_Manager.emp_no);


--4. List the department of each employee with the following information: 
-- employee number, last name, first name, and department name.

Select
	dept_emp.emp_no,
	employees.last_name,
	employees.first_name,
	departments.dept_name
From Dept_emp 
Inner Join departments ON dept_EMP.dept_no=departments.dept_no
Inner Join employees On (employees.emp_no=dept_emp.emp_no) ;


--5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
Select 
	first_name, 
	last_name, 
	sex 
From Employees 
Where first_name= 'Hercules' AND last_name like 'B%';


--6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
Select
	Dept_emp.emp_no,
	Employees.last_name,
	Employees.first_name,
	Departments.dept_name
From Employees
Join Dept_emp On Dept_emp.emp_no=Employees.emp_no
Join Departments On (Dept_emp.dept_no=Departments.dept_no)
Where dept_name='Sales' ;


--7. List all employees in the Sales and Development departments, 
--including their employee number, last name, first name, and department name.

Select
	Dept_emp.emp_no,
	Employees.last_name,
	Employees.first_name,
	Departments.dept_name
From Employees
Join Dept_Emp On Dept_emp.emp_no=Employees.emp_no
Join Departments On (Dept_emp.dept_no=Departments.dept_no)
Where dept_name='Sales' Or dept_name='Development' ;


--8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
Select 
	last_name, Count(last_name)
From Employees 
Group By last_name 
Order By Count(last_name) Desc;


-- ***according to the Homework Epilogue section:"...You look down at your badge to see that your employee ID number is 499942."
-- ... so apparently I am employee "April Foolsday" and work as a Tech leader --> (very funny)
Select 
	Employees.first_name, 
	Employees.last_name, 
	Employees.emp_no,
	Titles.title
From Employees
Join Titles On Titles.title_id=employees.emp_title 
Where emp_no='499942';



