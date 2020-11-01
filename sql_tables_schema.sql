
CREATE TABLE Employees (
    emp_no INT   NOT NULL,
    emp_title VARCHAR(5)   NOT NULL,
    birth_date DATE   NOT NULL,
    first_name VARCHAR(25)   NOT NULL,
    last_name VARCHAR(25)   NOT NULL,
    sex VARCHAR(1)   NOT NULL,
    hire_date DATE   NOT NULL,
    PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_title) REFERENCES Titles(title_id)
);

SELECT * from Employees;


CREATE TABLE Departments (
    dept_no VARCHAR(4) NOT NULL,
    dept_name VARCHAR(25) NOT NULL,
	PRIMARY KEY (dept_no)
);

SELECT * from Departments;


CREATE TABLE Titles (
    title_id VARCHAR(10) NOT NULL,
    title VARCHAR(25) NOT NULL,
	PRIMARY KEY (title_id)
);

SELECT * from Titles;


CREATE TABLE Dept_Manager (
	dept_no VARCHAR(4)  NOT NULL,
	emp_no INT NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES Departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
);

SELECT * from Dept_Manager;


CREATE TABLE Dept_emp (
    emp_no INT NOT NULL,
    dept_no VARCHAR(4)   NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES Departments(dept_no), 
    FOREIGN KEY (emp_no) REFERENCES Employees(emp_no) 
);

SELECT * from Dept_emp;


CREATE TABLE Salaries (
    emp_no INT  NOT NULL,
    salary INT  NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
);

SELECT * from Salaries;



