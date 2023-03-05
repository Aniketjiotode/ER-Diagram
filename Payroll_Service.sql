--UC_1

CREATE DATABASE payroll_service;
USE payroll_service;

--UC_2

CREATE TABLE empolyee_payroll
(
  id INT IDENTITY PRIMARY KEY NOT NULL,
  name VARCHAR(150) NOT NULL,
  salary INT NOT NULL,
  start DATE NOT NULL,
);

--UC_3

INSERT INTO empolyee_payroll(name,salary,start)
VALUES('Aniket',55000,'2023-03-03'),('Rajat',54000,'2023-05-06'),('Anil',52000,'2023-04-08');

--UC_4

SELECT * FROM empolyee_payroll;

--UC_5

SELECT salary FROM empolyee_payroll WHERE name='Aniket';
SELECT * FROM empolyee_payroll WHERE start BETWEEN CAST('2018-01-01'
AS DATE) AND CAST('2023-03-03' AS DATE);

--UC_6

ALTER TABLE empolyee_payroll ADD gender CHAR(1);
UPDATE empolyee_payroll SET gender ='M' WHERE name='Aniket' or name = 'Rajat' or name= 'Anil';

--UC_7

SELECT SUM(salary) AS Total_Empolyee_Salary FROM empolyee_payroll WHERE gender='M' GROUP BY gender; 