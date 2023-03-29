Create Table Titles (
title_id varchar(50),
title varchar (50),
PRIMARY KEY(title_id)
);

Create Table Employees (
emp_no INT,
emp_title_id VARCHAR (50),
birth_date VARCHAR (50),
first_name VARCHAR (50),
last_name VARCHAR (50),
sex VARCHAR (50),
hire_date DATE,
PRIMARY KEY(emp_no),
FOREIGN KEY(emp_title_id) REFERENCES Titles(title_id)
);

Create Table Department (
dept_no varchar(50),
dept_name varchar (50),
PRIMARY KEY(dept_no)
);

Create Table Dept_Manager (
dept_no varchar(50),
emp_no INT,
FOREIGN KEY(emp_no) REFERENCES Employees(emp_no),
FOREIGN KEY(dept_no) REFERENCES Department(dept_no)
);

Create Table Dept_Emp (
emp_no INT,
dept_no varchar(50),
FOREIGN KEY(emp_no) REFERENCES Employees(emp_no),
FOREIGN KEY(dept_no) REFERENCES Department(dept_no)
);

Create Table Salaries (
emp_no INT,
salaries INT,
FOREIGN KEY(emp_no) REFERENCES Employees(emp_no)
);