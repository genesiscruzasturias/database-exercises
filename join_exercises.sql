use employees;

# Using the example in the Associative Table Joins section as a guide, write a query that shows each department along with the name of the current manager for that department.
#
# +--------------------+--------------------+
# | Department Name    | Department Manager |
# +--------------------+--------------------+
# | Customer Service   | Yuchang Weedman    |
# | Development        | Leon DasSarma      |
# | Finance            | Isamu Legleitner   |
# | Human Resources    | Karsten Sigstam    |
# | Marketing          | Vishwani Minakawa  |
# | Production         | Oscar Ghazalie     |
# | Quality Management | Dung Pesch         |
# | Research           | Hilary Kambil      |
# | Sales              | Hauke Zhang        |
# +--------------------+--------------------+
SELECT * from departments;

SELECT d.dept_name, CONCAT(employees.first_name, ' ', employees.last_name) AS full_name FROM employees
RIGHT JOIN employees.dept_manager de on employees.emp_no = de.emp_no
JOIN employees.departments d on de.dept_no = d.dept_no
WHERE de.to_date = '9999-01-01';

# Find the name of all departments currently managed by women.
# +------------------+--------------------+
# | Department Name  | Department Manager |
# +------------------+--------------------+
# | Development      | Leon DasSarma      |
# | Finance          | Isamu Legleitner   |
# | Human Resources  | Karsten Sigstam    |
# | Research         | Hilary Kambil      |
# +------------------+--------------------+
SELECT DISTINCT d.dept_name, concat(employees.first_name, ' ', employees.last_name) AS 'Department Manager' FROM employees
JOIN employees.dept_manager de on employees.emp_no = de.emp_no
left JOIN employees.departments d on de.dept_no = d.dept_no
WHERE employees.employees.gender = 'F';
# GROUP BY dept_name ORDER BY dept_name asc;
# RIGHT JOIN employees.departments de on dept_no = de.dept_no
# LEFT JOIN employees.

# Find the current titles of employees currently working in the Customer Service department.
# +--------------------+-------+
# | title              | Total |
# +--------------------+-------+
# | Senior Staff       | 11268 |
# | Staff              |  3574 |
# | Senior Engineer    |  1790 |
# | Engineer           |   627 |
# | Technique Leader   |   241 |
# | Assistant Engineer |    68 |
# | Manager            |     1 |
# +--------------------+-------+

SELECT



# WHERE dept_name = 'Customer Service'


