USE employees;

SELECT DISTINCT title
FROM titles;

SELECT first_name, last_name
FROM employees
WHERE last_name LIKE 'e%e'
GROUP BY last_name, first_name;


SELECT last_name from employees
WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%'
GROUP BY last_name;


SELECT last_name, count(last_name) AS 'count' from employees
WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%'
GROUP BY last_name
ORDER BY count(last_name) DESC;


SELECT count(*), gender -- count each row.
FROM employees
WHERE first_name IN ('Irena', 'Vidya','Maya')
GROUP BY gender;