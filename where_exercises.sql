USE employees;

SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya');

SELECT *
FROM employees
WHERE last_name LIKE 'e%';

SELECT *
FROM employees
WHERE hire_date LIKE '199%';

SELECT *
FROM employees
WHERE birth_date LIKE '%12-25';

SELECT *
FROM employees
WHERE last_name LIKE '%q%';