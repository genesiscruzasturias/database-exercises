use employees;

# Change the ORDER BY clause so that you order by last name before first name. Your first result should still be Irena Acton but now the last result should be Maya Zyda.
#Find all employees whose last name starts with 'E' — 7,330 rows.
# Update your queries for employees whose names start and end with 'E'. Use concat() to combine their first and last name together as a single column in your results.
SELECT CONCAT(first_name, ' ', last_name)
FROM employees
WHERE last_name LIKE 'E%'
order by  emp_no asc;

#Find all employees whose last name starts or ends with 'E' — 30,723 rows.
# Update your queries for employees whose names start and end with 'E'. Use concat() to combine their first and last name together as a single column in your results.
SELECT CONCAT(first_name, ' ', last_name)
FROM employees
WHERE last_name LIKE '%e' OR 'E%'
order by  emp_no asc;

#Duplicate the previous query and update it to find all employees whose last name starts and ends with 'E' — 899 rows.
# Update your queries for employees whose names start and end with 'E'. Use concat() to combine their first and last name together as a single column in your results.
SELECT CONCAT(first_name, ' ', last_name)
FROM employees
WHERE last_name LIKE '%e' AND 'E%'
order by  emp_no asc;

# Now reverse the sort order for both queries and compare results.
#Find all employees whose last name starts with 'E' — 7,330 rows.
# Update your queries for employees whose names start and end with 'E'. Use concat() to combine their first and last name together as a single column in your results.
SELECT CONCAT(first_name, ' ', last_name)
FROM employees
WHERE last_name LIKE 'E%'
order by  emp_no desc;

#Find all employees whose last name starts or ends with 'E' — 30,723 rows.
# Update your queries for employees whose names start and end with 'E'. Use concat() to combine their first and last name together as a single column in your results.
SELECT CONCAT(first_name, ' ', last_name)
FROM employees
WHERE last_name LIKE '%e' OR 'E%'
order by  emp_no desc;

#Duplicate the previous query and update it to find all employees whose last name starts and ends with 'E' — 899 rows.
# Update your queries for employees whose names start and end with 'E'. Use concat() to combine their first and last name together as a single column in your results.
SELECT CONCAT(first_name, ' ', last_name)
FROM employees
WHERE last_name LIKE '%e' AND 'E%'
order by  emp_no desc;

# Find all employees born on Christmas — 842 rows.
SELECT *
FROM employees
WHERE year(birth_date)
  AND month(birth_date) = 12
  AND day(birth_date) = 25;

# Find all employees hired in the 90s and born on Christmas — 362 rows.
SELECT *
FROM employees
WHERE year(hire_date) BETWEEN 1990 AND 1999
  AND month(birth_date) = 12
  AND day(birth_date) = 25;

# Change the query for employees hired in the 90s and born on Christmas such that the first result is the oldest employee who was hired last. It should be Khun Bernini.
SELECT *
FROM employees
WHERE year(hire_date) BETWEEN 1990 AND 1999
  AND month(birth_date) = 12
  AND day(birth_date) = 25
  ORDER BY birth_date asc, hire_date desc;

# For your query of employees born on Christmas and hired in the 90s, use datediff() to find how many days they have been working at the company (Hint: You might also need to use now() or curdate()).

SELECT *, DATEDIFF(CURDATE(), hire_date)
FROM employees
WHERE year(hire_date)BETWEEN 1990 AND 1999
  AND month(birth_date) = 12
  AND day(birth_date) = 25
ORDER BY birth_date asc, hire_date desc;