/*
1. Before the next board meeting, we want to make sure we have a clear  picture of where we stand on hiring. 
Can you pull together a view of our current headcount situation across each team?


SELECT departments.department_name AS department,
COUNT(employees.employee_id) AS amount_of_employees
FROM employees
LEFT JOIN departments ON employees.department_id = departments.department_id
WHERE employees.hire_date IS NOT NULL
GROUP BY departments.department_id, departments.department_name
ORDER BY amount_of_employees DESC;


/* 2. HR has asked for a quick snapshot of our workforce composition — nothing too detailed,
just a breakdown of where people currently stand in terms of their employment with us.*/
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date IS NOT NULL AND employment_status = 'active'
ORDER BY hire_date DESC;
