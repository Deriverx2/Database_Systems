CREATE TABLE dept(
  dept_id INT NOT NULL PRIMARY KEY, dept_name varchar2(50)  
);
DESC dept;

CREATE TABLE emp(
  emp_id INT NOT NULL PRIMARY KEY, emp_name VARCHAR2(20), emp_salary DECIMAL(10,2), dept_id INT
);
DESC emp;

INSERT INTO dept VALUES (1, 'IT');
INSERT INTO dept VALUES (2, 'HR');
INSERT INTO dept VALUES (3, 'MEDICAL');
INSERT INTO dept VALUES (4, 'QUALITY');
SELECT * FROM dept;

INSERT INTO emp VALUES(1, 'Mark', 40000, 2);
INSERT INTO emp VALUES(2, 'Ahmad', 35000, 1);
INSERT INTO emp VALUES(3, 'Abid', 50000, 2);
INSERT INTO emp VALUES(4, 'Rahul', 45000, 1);
INSERT INTO emp VALUES(5, 'Uzma', 40000, 3);
INSERT INTO emp VALUES(6, 'Sean', 50000, 4);
SELECT * FROM emp;

SELECT * FROM emp WHERE emp_salary>35000 AND dept_id=1; 
SELECT * FROM emp WHERE emp_salary>35000 OR dept_id=2;
SELECT * FROM emp WHERE emp_salary>35000 AND (dept_id=1 OR dept_id=2);

SELECT * FROM emp WHERE dept_id IN (1,3); 
SELECT * FROM emp WHERE emp_name IN ('Ahmad','Rahul');

SELECT * FROM emp WHERE emp_salary BETWEEN 35000 AND 40000;

SELECT * FROM emp WHERE emp_name LIKE 'A%';
SELECT * FROM emp WHERE emp_name LIKE '%h%';
SELECT * FROM emp WHERE emp_name LIKE '_b%';
SELECT * FROM emp WHERE emp_name LIKE '__m%';

SELECT dept_id FROM emp UNION SELECT dept_id FROM dept; 
SELECT dept_id FROM emp UNION ALL SELECT dept_id FROM dept; 
SELECT dept_id FROM emp UNION ALL SELECT dept_id FROM dept ORDER BY dept_id; 

SELECT emp_id "ID", emp_name "Employee Name", emp_salary "Salary", dept_id "Department" FROM emp;

SELECT emp_name, emp_salary, dept_name FROM emp, dept WHERE emp.dept_id=dept.dept_id;
SELECT emp_name, emp_salary, dept_name FROM emp e, dept d WHERE e.dept_id=d.dept_id;

