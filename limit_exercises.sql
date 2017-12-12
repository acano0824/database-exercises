USE employees;

SELECT last_name
FROM employees
WHERE last_name LIKE 'Z%'
GROUP BY last_name
ORDER BY last_name DESC
LIMIT 10;

SELECT first_name, last_name, hire_date, birth_date
FROM employees
WHERE birth_date LIKE '%12-25' AND hire_date LIKE '199%'
ORDER BY birth_date ASC, hire_date DESC
LIMIT 5;

SELECT first_name, last_name
FROM employees
WHERE birth_date LIKE '%12-25' AND hire_date LIKE '199%'
ORDER BY birth_date ASC, hire_date DESC
LIMIT 5 OFFSET 45;