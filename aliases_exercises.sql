use employees;

# Return 10 employees in a result set named 'full_name' in the format of 'last name, first name' for each employee.
SELECT CONCAT(emp_no, ' ', '\-', ' ', first_name, ' ', last_name) AS full_name
FROM employees
LIMIT 10;

SELECT CONCAT(birth_date) AS DOB FROM employees LIMIT 10;