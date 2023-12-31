use employees;

# List the first 10 distinct last name sorted in descending order. Your result should look like this:
SELECT DISTINCT last_name FROM employees ORDER BY last_name desc limit 10;

# Create a query to get the top 5 salaries and display just the employees number from the salaries table. The employee number results should be:
SELECT emp_no FROM salaries ORDER BY salary desc limit 5;

# Try to think of your results as batches, sets, or pages. The first five results are your first page. The five after that would be your second page, etc. Update the previous query to find the tenth page of results. The employee number results should be:

SELECT emp_no FROM salaries ORDER BY salary desc limit 5 OFFSET 90;