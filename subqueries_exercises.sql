# Find all the employees with the same hire date as employee 101010 using a subquery.
# 69 Rows
SELECT *
FROM employees.employees
WHERE hire_date = (SELECT hire_date FROM employees WHERE emp_no = 101010);
# Find all the titles held by all employees with the first name Aamod.
# 314 total titles, 6 unique titles
SELECT DISTINCT title
FROM employees
JOIN titles ON employees.emp_no = titles.emp_no
WHERE employees.employees.first_name = 'Aamod';
# Find all the current department managers that are female.
SELECT DISTINCT employees.first_name, employees.last_name
FROM employees.employees
JOIN dept_manager ON emp_no = dept_manager.emp_no
WHERE employees.gender = 'F' AND titles.title = 'Manager';

#  +------------+------------+
#  | first_name | last_name  |
#  +------------+------------+
#  | Isamu      | Legleitner |
#  | Karsten    | Sigstam    |
#  | Leon       | DasSarma   |
#  | Hilary     | Kambil     |
#  +------------+------------+