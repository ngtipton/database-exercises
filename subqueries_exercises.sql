USE employees;

SELECT first_name, last_name, birth_date
FROM employees
WHERE emp_no IN (
  SELECT emp_no
  FROM dept_manager
)
LIMIT 10;

SELECT emp_no FROM dept_manager;

#
# Find all the employees with the same hire date as employee 101010 using a sub-query.

# 69 Rows

SELECT *
FROM employees
WHERE hire_date IN (
  SELECT hire_date
  FROM employees
  WHERE emp_no = 101010
);

# Find all the titles held by all employees with the first name Aamod.
#
# 314 total titles, 6 unique titles

select title
from titles
where emp_no IN (select emp_no from employees where first_name = 'Aamod');

# Find all the current department managers that are female.

select *
from employees
where gender = 'F'
  and emp_no in (select emp_no from dept_manager where to_date > now());

# BONUS
#
# Find all the department names that currently have female managers.

select dept_name
from departments
where dept_no in (
  select dept_no
  from dept_manager
         join employees e on dept_manager.emp_no = e.emp_no
  where to_date > now()
    AND e.gender = 'F'
);

select first_name, last_name
from employees
where emp_no = (
  select emp_no from salaries where salary = (select max(salary) from salaries));


select first_name, last_name
from employees
where emp_no = (
  select emp_no
  from salaries
  order by salary desc
  limit 1
);