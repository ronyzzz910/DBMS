CREATE DATABASE loan_accounts;
CREATE TABLE loan_accounts(accno CHAR(4),
cust_name VARCHAR(15),loan_amount DECIMAL(10,2),
installments INT(5),int_rate DECIMAL(10,2),
start_date DATE,interest DECIMAL(10,2)
);
DESCRIBE loan_accounts;
ALTER TABLE loan_accounts 
ADD COLUMN (category VARCHAR (1));
INSERT INTO  loan_accounts(accno,cust_name,loan_amount,installments,int_rate,start_date,interest)
VALUES('1001','R.K.Gupta',300000.00,36,12.00,'2009-07-19',null),
('1002','S.P.Sharma',500000.00, 48, 10.00,'2008-03-22',NULL),
('1003', 'K.P Jain' ,300000.00 ,36,null,'2007-08-03',NULL),
('1004','M.P.Yadhav',800000.00,60,10.00,'2008-06-12',NULL),
('1005','S.P.Sinha',200000.00,36,12.50,'2010-03-01',NULL),
('1006','P.Sharma',700000.00,60,12.50,'2008-05-06',NULL),
('1007','K.S.Dhall',500000.00,48,null,'2008-05-03',NULL);
SELECT * FROM loan_accounts;
SET SQL_SAFE_UPDATES=0;
update loan_accounts set int_rate = 11.50 where int_rate is null;
update loan_accounts set int_rate = int_rate + 0.5 where loan_amount > 400000.00;
SELECT * FROM loan_accounts;
update loan_accounts set interest = (loan_amount * int_rate* installments)/(12*100) where interest is null; 
SELECT * FROM loan_accounts;
DELETE FROM loan_accounts WHERE start_date < '2008-01-01';
SELECT * FROM loan_accounts;
delete FROM loan_accounts where cust_name like 'K%';
SELECT * FROM loan_accounts;
SELECT * FROM loan_accounts where installments < 40;
SELECT accno,loan_amount, start_date from loan_accounts where start_date < '2009-04-01';
select int_rate ,start_date from loan_accounts where start_date > '2009-04-01';
SELECT accno,cust_name,loan_amount FROM loan_accounts WHERE cust_name LIKE '%Sharma';
select loan_amount from loan_accounts where cust_name like '%a';
select accno,cust_name,loan_amount from loan_accounts where cust_name like'%a%';
select accno,cust_name,loan_amount from loan_accounts where cust_name not like '%p%';