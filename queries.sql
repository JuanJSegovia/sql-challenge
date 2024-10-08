--List the employee number, last name, first name, sex, and salary of each employee (2 points)
select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
from employees AS e
left join salaries AS s
	on e.emp_no = s.emp_no

--List the first name, last name, and hire date for the employees who were hired in 1986 (2 points)
select e.first_name, e.last_name, e.hire_date
from employees as e
where hire_date >= '1986-01-01'
and hire_date <= '1986-12-31'

--List the manager of each department along with their department number, department name, employee number, last name, and first name (2 points)
select dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
from dept_manager as dm
left join department as d
    on dm.dept_no = d.dept_no
left join employees as e
    on dm.emp_no = e.emp_no

--List the department number for each employee along with that employee’s employee number, last name, first name, and department name (2 points)
select e.emp_no, e.last_name, e.first_name, d.dept_no, d.dept_name
from employees as e
left join dept_emp as de
	on e.emp_no = de.emp_no
left join department as d
	on de.dept_no = d.dept_no

--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B (2 points)
select first_name, last_name, sex
from employees as e
where e.first_name = 'Hercules'
and e.last_name like 'B%'

--List each employee in the Sales department, including their employee number, last name, and first name (2 points)
select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees as e
left join dept_emp as de
	on e.emp_no = de.emp_no
left join department as d
	on de.dept_no = d.dept_no
where d.dept_name = 'Sales'

--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name (4 points)
select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees as e
left join dept_emp as de
	on e.emp_no = de.emp_no
left join department as d
	on de.dept_no = d.dept_no
where d.dept_name = 'Sales'
or d.dept_name = 'Development'

--List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name) (4 points)
select e.last_name, count(e.last_name) as frequency
from employees as e
group by e.last_name
order by frequency desc;
