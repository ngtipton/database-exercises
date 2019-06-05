USE employees;

SELECT * FROM employees
WHERE first_name IN ('Irena','Vidya','Maya')
ORDER BY last_name , first_name ;

SELECT * FROM employees
WHERE last_name LIKE 'E%'
ORDER BY emp_no ASC;

SELECT * FROM employees
WHERE hire_date LIKE '199%';

SELECT * FROM employees
WHERE birth_date LIKE '%-12-25'
ORDER BY hire_date DESC;

SELECT * FROM employees
WHERE last_name LIKE '%q%';

SELECT * FROM employees
WHERE first_name = 'Irena'
   OR first_name = 'Vidya'
   OR first_name = 'Maya';


SELECT * FROM employees
WHERE first_name IN ('Irena','Vidya','Maya')
  AND gender = 'M';

SELECT * FROM employees
WHERE last_name LIKE '%e'
   OR last_name LIKE 'E%';

SELECT * FROM employees
WHERE last_name LIKE 'E%'
  AND last_name LIKE '%E';

SELECT * FROM employees
WHERE birth_date LIKE '%-12-25'
  AND hire_date LIKE '199%';

SELECT * FROM employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%';