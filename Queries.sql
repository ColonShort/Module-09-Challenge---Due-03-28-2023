--Question 1 - List the employee number, last name, first name, sex, and salary of each employee.
Select Employees.emp_no, Employees.last_name, Employees.first_name, Employees.sex, Salaries.salaries
from Employees 
full outer join Salaries on Employees.emp_no = Salaries.emp_no;

--Question 2 - List the first name, last name, and hire date for the employees who were hired in 1986.
Select Employees.first_name, Employees.last_name, Employees.hire_date
from Employees
where Employees.hire_date BETWEEN '1/1/1986' and '1/1/1987';

--Question 3 - List the manager of each department along with their department number, department name, employee number, last name, and first name.
Select Dept_Manager.dept_no, Department.dept_name, Dept_Manager.emp_no, Employees.last_name, Employees.first_name
from Dept_Manager, Department, Employees
where Dept_Manager.dept_no = Department.dept_no 
and Employees.emp_no = Dept_Manager.emp_no;

--Question 4 - List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
Select Department.dept_no, Employees.emp_no, Employees.last_name, Employees.first_name, Department.dept_name
from Dept_Manager, Department, Employees
where Dept_Manager.dept_no = Department.dept_no and Employees.emp_no = Dept_Manager.emp_no;

--Question 5 - List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
Select Employees.first_name, Employees.last_name, Employees.sex
from Employees
where Employees.first_name like 'Hercules'
and Employees.last_name like 'B%';

--Question 6 - List each employee in the Sales department, including their employee number, last name, and first name.
Select Department.dept_name, Employees.last_name, Employees.first_name
from Department, Employees, Dept_Manager
where Department.dept_no = Dept_Manager.dept_no and Dept_Manager.emp_no=Employees.emp_no
and Department.dept_name like 'Sales';

--Question 7 - List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.***Help on this
Select Employees.emp_no, Employees.last_name, Employees.first_name, Department.dept_name
from Department, Employees, Dept_Manager
where Department.dept_no = Dept_Manager.dept_no and Dept_Manager.emp_no = Employees.emp_no
and Department.dept_name like 'Sales'
and Department.dept_name like 'Development';

--Question 8 - List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
Select Employees.last_name, count(*)
From Employees
Group by Employees.last_name
Order by count(Employees.last_name) Desc;

