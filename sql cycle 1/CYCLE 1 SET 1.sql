create database employee;
CREATE TABLE EMP
(
EMPNO INT(2),
ENAME VARCHAR(25),
JOB VARCHAR(12),
SALARY INT(10.2),
COMMISSION INT(7.2),
DEPTNO INT(2)
);select * from EMP;
DESCRIBE EMP;
INSERT INTO EMP(EMPNO,ENAME,JOB,SALARY,COMMISSION,DEPTNO)VALUES
(7369,'SMITH','CLERK',800,NULL,20);
INSERT INTO EMP(EMPNO,ENAME,JOB,SALARY,COMMISSION,DEPTNO)VALUES
(7499,'ALLEN','SALESMAN',1600,300,30),
(7521,'WARD','SALESMAN',1250,500,30),
(7566,'JONES','MANAGER',2975,NULL,20),
(7654,'MARTIN','SALESMAN',1250,1400,30),
(7698,'BLAKE','MANAGER',2850,NULL,30),
(7782,'CLARK','MANAGER',2450,NULL,10),
(7788,'SCOTT','ANALYST',3000,NULL,20),
(7839,'KING','PRESIDENT',5000,NULL,10),
(7844,'TURNER','SALESMAN',1500,NULL,30),
(7876,'ADAMS','CLERK',1100,NULL,20),
(7900,'JAMES',NULL,950,NULL,30),
(7902,'FORD','ANALYST',3000,NULL,20),
(7934,'MILLER','CLERK',1300,NULL,10);
SELECT * FROM EMP;
SET SQL_SAFE_UPDATES=0;
UPDATE EMP
SET JOB='CLERK' WHERE JOB=NULL;
SELECT * FROM EMP;
ALTER TABLE EMP
ADD DATE_JOIN DATE NOT NULL;
DESCRIBE EMP;
SET DATE_JOIN='1980-12-17' WHERE EMPNO='7369';
UPDATE EMP
SET DATE_JOIN='1981-02-20' WHERE EMPNO='7499';
UPDATE EMP 
SET DATE_JOIN='1981-02-22' WHERE EMPNO='7521';
UPDATE EMP 
SET DATE_JOIN='1981-04-02' WHERE EMPNO='7566';
UPDATE EMP 
SET DATE_JOIN='1981-09-28' WHERE EMPNO='7654';
UPDATE EMP 
SET DATE_JOIN='1981-05-01' WHERE EMPNO='7698';
UPDATE EMP 
SET DATE_JOIN='1981-06-09' WHERE EMPNO='7782';
UPDATE EMP 
SET DATE_JOIN='1987-04-19' WHERE EMPNO='7788';
UPDATE EMP 
SET DATE_JOIN='1981-11-17' WHERE EMPNO='7839';
UPDATE EMP 
SET DATE_JOIN='1981-09-08' WHERE EMPNO='7844';
UPDATE EMP 
SET DATE_JOIN='1987-05-23' WHERE EMPNO='7876';
UPDATE EMP 
SET DATE_JOIN='1981-12-03' WHERE EMPNO='7900';
UPDATE EMP 
SET DATE_JOIN='1981-12-03' WHERE EMPNO='7902';
UPDATE EMP 
SET DATE_JOIN='1982-01-23' WHERE EMPNO='7934';
SELECT * FROM EMP;
SELECT DISTINCT JOB FROM EMP;
SELECT ENAME FROM EMP WHERE DEPTNO IN(20,30);
SELECT ENAME,SALARY+COMMISSION AS TOTAL_0F_SALARY FROM EMP;
SELECT ENAME,SALARY*12 AS ANNUAL_SALARY FROM EMP;
SELECT ENAME FROM EMP WHERE DATE_JOIN='1981-12-03';
SELECT ENAME,SALARY FROM EMP WHERE ENAME='MILLER';
DELETE FROM EMP WHERE ENAME='MILLER';
SELECT * FROM EMP;
SELECT ENAME,DEPTNO FROM EMP ;
ALTER TABLE EMP
ALTER TABLE EMP ADD TOTAL_SALARY INT
UPDATE EMP SET COMMISSION=0 WHERE COMMISSION IS NULL;
UPDATE EMP SET TOTAL_SALARY=(SELECT SALARY+COMMISSION AS TOTAL_SALARY);
SELECT * FROM EMP;
ALTER TABLE EMP
DROP COLUMN COMMISSION;
ALTER TABLE EMP
DROP COLUMN COMMISSION;
SELECT * FROM EMP;
SELECT TOTAL_SALARY, GROUP_CONCAT(ENAME ORDER BY DATE_JOIN) AS ENAME
FROM EMP
GROUP BY TOTAL_SALARY
HAVING COUNT(*) > 1;
SELECT EMPNO AS EMP_ID, ENAME AS 'NAME'
ALTER TABLE EMP
RENAME TO EMPLOYEE;
CREATE TABLE EMP_TABLE AS SELECT * FROM EMPLOYEE;

SELECT * FROM EMP_TABLE;
SELECT * FROM EMP_TABLE FULL JOIN EMPLOYEE;
SELECT * FROM EMP_TABLE;
TRUNCATE TABLE EMPLOYEE;
SELECT * FROM EMPLOYEE;
SELECT * FROM EMP_TABLE FULL JOIN EMPLOYEE;
DROP TABLE EMPLOYEE;














