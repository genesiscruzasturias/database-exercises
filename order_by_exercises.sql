use employees;

#Find all employees with first names 'Irena', 'Vidya', or 'Maya' — 709 rows (Hint: Use IN).
#Modify your first query to order by first name. The first result should be Irena Flexer and the last result should be Vidya Awdeh.
# SELECT first_name, last_name
# FROM employees
# WHERE first_name IN ('Irena', 'Vidya', 'Maya');
# SELECT first_name, last_name
# FROM employees
# WHERE first_name = 'Irena' OR
#         first_name = 'Vidya' OR
#             first_name = 'Maya'
# ORDER BY first_name, last_name asc;
# Change the ORDER BY clause so that you order by last name before first name. Your first result should still be Irena Acton but now the last result should be Maya Zyda.
SELECT first_name, last_name
FROM employees
WHERE first_name = 'Irena' OR
        first_name = 'Vidya' OR
        first_name = 'Maya'
ORDER BY last_name, first_name asc;

#Find all employees whose last name starts with 'E' — 7,330 rows.
SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE 'E%'
order by  emp_no asc;

#Find all employees with a 'q' in their last name — 1,873 rows.
SELECT first_name, last_name
FROM employees
WHERE last_name LIKE '%q%';

#Update your query for 'Irena', 'Vidya', or 'Maya' to use OR instead of IN — 709 rows.
SELECT first_name, last_name
FROM employees
WHERE first_name = 'Irena' OR
        first_name = 'Vidya' OR
            first_name = 'Maya' AND
            gender = 'M';

#Find all employees whose last name starts or ends with 'E' — 30,723 rows.
SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE '%e' OR 'E%'
order by  emp_no asc;

#Duplicate the previous query and update it to find all employees whose last name starts and ends with 'E' — 899 rows.
SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE '%e' AND 'E%'
order by  emp_no asc;

#Find all employees with a 'q' in their last name but not 'qu' — 547 rows.
SELECT first_name, last_name
FROM employees
WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';

# Now reverse the sort order for both queries and compare results.


SELECT first_name, last_name
FROM employees
WHERE first_name = 'Irena' OR
        first_name = 'Vidya' OR
            first_name = 'Maya'
ORDER BY first_name, last_name desc;

SELECT first_name, last_name
FROM employees
WHERE first_name = 'Irena' OR
        first_name = 'Vidya' OR
        first_name = 'Maya'
ORDER BY last_name, first_name desc;

#Find all employees whose last name starts with 'E' — 7,330 rows.
SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE 'E%'
order by  emp_no desc;

#Find all employees whose last name starts or ends with 'E' — 30,723 rows.
SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE '%e' OR 'E%'
order by  emp_no desc;

#Duplicate the previous query and update it to find all employees whose last name starts and ends with 'E' — 899 rows.
SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE '%e' AND 'E%'
order by  emp_no desc;