CREATE TABLE emp_tb(
  emp_id NUMBER PRIMARY KEY, emp_name VARCHAR(20), emp_salary DECIMAL(10,2)  
);
DESC emp_tb;

--INSERT COMMAND
INSERT INTO emp_tb VALUES(1, 'Mark', 40000);
INSERT INTO emp_tb VALUES(2, 'Ahmad', 35000);
INSERT INTO emp_tb VALUES(3, 'Abid', 50000);
INSERT INTO emp_tb VALUES(4, 'Rahul', 45000);

--SELECT COMMAND
SELECT * FROM emp_tb;
SELECT * FROM emp_tb WHERE emp_id=4;
SELECT emp_name FROM emp_tb WHERE emp_name='Abid';
SELECT * FROM emp_tb WHERE emp_salary > 35000;

--UPDATE COMMAND
UPDATE emp_tb SET emp_salary='50000' WHERE emp_id=4;
UPDATE emp_tb SET emp_salary='60000' WHERE emp_salary=50000;

--DELETE COMMAND
DELETE FROM emp_tb WHERE emp_id=4;

--ORDER BY
SELECT * FROM emp_tb ORDER BY emp_id ASC;
SELECT * FROM emp_tb ORDER BY emp_id DESC;
SELECT emp_name FROM emp_tb ORDER BY emp_id DESC;

--DISTINCT
SELECT DISTINCT emp_name FROM emp_tb;
SELECT DISTINCT emp_name, emp_salary FROM emp_tb;

--TRUNCATE (DELETE ALL DATA IN TABLE)
TRUNCATE TABLE emp_tb;

--DROP (DELETE TABLE)
DROP TABLE emp_tb;
