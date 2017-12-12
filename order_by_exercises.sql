USE employees;

SELECT first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY last_name, first_name;

SELECT *
FROM employees
WHERE last_name LIKE 'e%'
ORDER BY emp_no DESC;

SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date LIKE '199%'
ORDER BY hire_date ASC;

SELECT first_name, last_name, hire_date, birth_date
FROM employees
WHERE birth_date LIKE '%12-25'
ORDER BY hire_date DESC;

SELECT *
FROM employees
WHERE last_name LIKE '%q%';