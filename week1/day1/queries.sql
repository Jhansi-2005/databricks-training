SELECT * FROM Employee;
SELECT name,salary FROM Employee;
SELECT * FROM Employee
WHERE age > 30;
SELECT name FROM Department;
SELECT e.*
FROM Employee e
JOIN Department d ON e.department_id = d.department_id
WHERE d.name = 'IT';
SELECT * FROM Employee
WHERE name LIKE 'J%';
SELECT * FROM Employee
WHERE name LIKE '%e';
SELECT * FROM Employee
WHERE name LIKE '%a%';
SELECT * FROM Employee
WHERE LENGTH(name) = 9;
SELECT * FROM Employee
WHERE name LIKE '_o%';
SELECT * FROM Employee
WHERE YEAR(hire_date) = 2020;
SELECT * FROM Employee
WHERE MONTH(hire_date) = 1;
SELECT * FROM Employee
WHERE hire_date < '2019-01-01';
SELECT * FROM Employee
WHERE hire_date >= '2021-03-01';
SELECT * FROM Employee
WHERE hire_date >= CURRENT_DATE - INTERVAL 2 YEAR;
SELECT SUM(salary) FROM Employee;
SELECT AVG(salary) FROM Employee;
SELECT MIN(salary) FROM Employee;
SELECT department_id, COUNT(*) 
FROM Employee
GROUP BY department_id;
SELECT department_id, AVG(salary)
FROM Employee
GROUP BY department_id;
SELECT department_id
FROM Employee
GROUP BY department_id
HAVING COUNT(*) > 2;
SELECT department_id
FROM Employee
GROUP BY department_id
HAVING AVG(salary) > 55000;
SELECT YEAR(hire_date), COUNT(*)
FROM Employee
GROUP BY YEAR(hire_date)
HAVING COUNT(*) > 1;
SELECT department_id
FROM Employee
GROUP BY department_id
HAVING SUM(salary) < 100000;
SELECT department_id
FROM Employee
GROUP BY department_id
HAVING MAX(salary) > 75000;
SELECT * FROM Employee
ORDER BY salary ASC;
SELECT * FROM Employee
ORDER BY age DESC;
SELECT * FROM Employee
ORDER BY hire_date;
SELECT * FROM Employee
ORDER BY department_id, salary;
SELECT department_id, SUM(salary) AS total
FROM Employee
GROUP BY department_id
ORDER BY total;
