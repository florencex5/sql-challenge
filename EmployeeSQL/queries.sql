--Q1: List the employee number, last name, first name, sex, and salary of each employee.
select e.emp_no,last_name,first_name,sex,salary
from employees as e
join salaries as s
on (e.emp_no = s.emp_no);

--Q2: List the first name, last name, and hire date for the employees who were hired in 1986.
select last_name,first_name,hire_date
from employees
where hire_date like '%1986';

--Q3: List the manager of each department along with their department number, department name, employee number, last name, and first name.
select m.dept_no,d.dept_name,m.emp_no,e.last_name,e.first_name
from employees as e
join dept_manager as m on (e.emp_no = m.emp_no)
join departments as d on (m.dept_no = d.dept_no);

--O4: List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
select de.dept_no,d.dept_name,de.emp_no,e.last_name,e.first_name
from employees as e
join dept_emp as de on (e.emp_no = de.emp_no)
join departments as d on (de.dept_no = d.dept_no);

--Q5: List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
select last_name,first_name,sex
from employees
where first_name = 'Hercules' and last_name like 'B%';

--Q6: List each employee in the Sales department, including their employee number, last name, and first name.
select de.emp_no,e.last_name,e.first_name
from employees as e
join dept_emp as de on (e.emp_no = de.emp_no)
join departments as d on (de.dept_no = d.dept_no)
where d.dept_no = 'd007';

--Q7: List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
select de.emp_no,e.last_name,e.first_name,d.dept_name
from employees as e
join dept_emp as de on (e.emp_no = de.emp_no)
join departments as d on (de.dept_no = d.dept_no)
where d.dept_no = 'd007' or d.dept_no = 'd005';

--Q8: List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
select last_name, count(last_name) as "frequency counts"
from employees 
group by last_name
order by "frequency counts" DESC;


