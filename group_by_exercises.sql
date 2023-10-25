use employees;

# In your script, use DISTINCT to find the unique titles in the titles table. Your results should look like:
# Senior Engineer
#  Staff
#  Engineer
#  Senior Staff
#  Assistant Engineer
#  Technique Leader
#  Manager
SELECT title, count(*) FROM titles GROUP BY title;

# Find your query for employees whose last names start and end with 'E'. Update the query to find just the unique last names that start and end with 'E' using GROUP BY. The results should be:
#  Eldridge
#  Erbe
#  Erde
#  Erie
#  Etalle
# SELECT first_name AND last_name, count(first_name, last_name)
# FROM employees
# WHERE last_name LIKE '%e' OR 'E%'
# GROUP BY first_name, last_name
# order by  emp_no desc;

SELECT DISTINCT last_name, COUNT(*)
FROM employees
WHERE last_name LIKE '%e' AND 'E%'
GROUP BY last_name, first_name
ORDER BY COUNT(*)
limit 5;

# Find the unique last names with a 'q' but not 'qu'. Your results should be:
#
#  Chleq
#  Lindqvist
#  Qiwen


# Add a COUNT() to your results and use GROUP BY to make it easier to find employees whose unusual name is shared with others.
SELECT DISTINCT last_name, count(last_name)
FROM employees
WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%'
group by last_name;

# Update your query for 'Irena', 'Vidya', or 'Maya'. Use count(*) and GROUP BY to find the number of employees for each gender with those names. Your results should be:
#  441 M
#  268 F

SELECT gender, count(gender)
FROM employees
WHERE first_name = 'Irena' OR
        first_name = 'Vidya' OR
        first_name = 'Maya'
GROUP BY gender;