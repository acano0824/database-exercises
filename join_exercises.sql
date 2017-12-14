# USE join_test_db;
USE employees;

# ======= Join example Database ==========

CREATE TABLE roles (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE users (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL,
  role_id INT UNSIGNED DEFAULT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (name) VALUES ('admin');
INSERT INTO roles (name) VALUES ('author');
INSERT INTO roles (name) VALUES ('reviewer');
INSERT INTO roles (name) VALUES ('commenter');

INSERT INTO users (name, email, role_id) VALUES
  ('bob', 'bob@example.com', 1),
  ('joe', 'joe@example.com', 2),
  ('sally', 'sally@example.com', 3),
  ('adam', 'adam@example.com', 3),
  ('jane', 'jane@example.com', null),
  ('mike', 'mike@example.com', null),
  ('sukari', 'sukari@gmail.com', 2),
  ('ash', 'ash@gmail.com', 2),
  ('emmett', 'em@gmail.com', 2),
  ('terrell', 'terri@gmail.com', null);

SELECT users.name as user_name, roles.name as role_name
FROM users
JOIN roles ON users.role_id = roles.id;

SELECT users.name AS user_name, roles.name AS role_name
FROM users
RIGHT JOIN roles ON users.role_id = roles.id;

SELECT users.name as user_name, roles.name as role_name
FROM roles
LEFT JOIN users ON users.role_id = roles.id;


# ======= Joins Exercise ========

SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS dept_manager
FROM employees as e
  JOIN dept_manager de
    ON de.emp_no = e.emp_no
  JOIN departments as d
    ON d.dept_no = de.dept_no
WHERE de.to_date = '9999-01-01'
ORDER BY d.dept_name;

SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS dept_manager
FROM employees as e
  JOIN dept_manager de
    ON de.emp_no = e.emp_no
  JOIN departments as d
    ON d.dept_no = de.dept_no
WHERE e.gender = 'F' AND de.to_date = '9999-01-01'
ORDER BY d.dept_name;

SELECT t.title, count(e.emp_no)
from titles t
  join employees e on e.emp_no = t.emp_no
  join dept_emp de ON de.emp_no = e.emp_no
  join departments d on d.dept_no = de.dept_no
WHERE t.to_date >= curdate() AND d.dept_name = 'Customer Service'
  AND de.to_date >= curdate()
GROUP BY t.title;

select d.dept_name as 'Department Name', concat(e.first_name, ' ',
  e.last_name
) AS 'Department Manager', s.salary
from employees e
  join dept_manager dm on dm.emp_no = e.emp_no
  join salaries s on s.emp_no = e.emp_no
  join departments d on d.dept_no = dm.dept_no
WHERE dm.to_date >= curdate() and s.to_date >= curdate()
ORDER BY d.dept_name;

