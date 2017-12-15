USE employees;

SELECT first_name, last_name, birth_date
FROM employees
WHERE emp_no IN (
  SELECT emp_no
  FROM dept_manager
)
LIMIT 10;

DESCRIBE employees;


select * from employees where hire_date = (select hire_date
                                           FROM employees WHERE emp_no = 101010);

select * from titles t where emp_no IN (SELECT emp_no
                                        FROM employess e where first_name = 'Aamod');

DESCRIBE dept_manager;

select first_name, last_name FROM employees e where emp_no IN (select emp_no
                                                               from dept_manager where to_date >= now()) and e.gender = 'F';