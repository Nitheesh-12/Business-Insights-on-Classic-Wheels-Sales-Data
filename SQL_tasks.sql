SELECT first_name, last_name
FROM employees 
JOIN newsalaries USING(emp_no)
ORDER BY salary DESC 
LIMIT 10;

SELECT first_name, last_name, dept_name
FROM employees 
JOIN newsalaries USING(emp_no)
LEFT JOIN new_dept_emp USING(emp_no)
LEFT JOIN departments USING(dept_no)
ORDER BY salary DESC
LIMIT 10;

SELECT dept_name
FROM departments
LEFT JOIN new_dept_emp USING(dept_no)
GROUP BY dept_name
ORDER BY count(emp_no) DESC
LIMIT 3;


SELECT emp_no
FROM departments
RIGHT JOIN new_dept_emp USING(dept_no)
RIGHT JOIN newsalaries USING(emp_no)
WHERE dept_name = "sales" and salary > (SELECT avg(salary) FROM departments RIGHT JOIN new_dept_emp USING(dept_no) 
										RIGHT JOIN newsalaries USING(emp_no)
										WHERE dept_name = "sales");


SELECT title
FROM newtitle
LEFT JOIN newsalaries USING(emp_no)
GROUP BY title
HAVING avg(salary)>65000



 