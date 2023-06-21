# Module 9

titles
-
title_id VARCHAR PK
title VARCHAR

departments
-
dept_no VARCHAR PK
dept_name VARCHAR

employees
-
emp_no INTEGER PK
emp_title_id VARCHAR FK >- titles.title_id
birth_date VARCHAR
first_name VARCHAR
last_name VARCHAR
sex VARCHAR
hire_date VARCHAR

dept_emp
-
emp_no PK INTEGER FK >- employees.emp_no
dept_no PK VARCHAR FK >- departments.dept_no

dept_manager
-
dept_no PK VARCHAR FK >- departments.dept_no
emp_no PK INTEGER FK >- employees.emp_no

salaries
-
emp_no PK INTEGER FK >- employees.emp_no
salary INTEGER 
