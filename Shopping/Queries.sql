 create database practice_tbs;

 create table cust_tb(cust_id INTEGER, cust_name VARCHAR(20), city VARCHAR(20), prod_id INTEGER);

 INSERT INTO cust_tb VALUES(111,'John','EKM',10),(112,'Mary','ALPY',11),(113,'Linson','KTM',11),(114,'Faris','EKM',10),(115,'Pk','ALPY',15);

 create table prod_tb (prod_id INTEGER, prod_name VARCHAR(20), price INTEGER, Qty INTEGER, Date date, cust_id INTEGER);

 INSERT INTO prod_tb VALUES (10, 'Rice', 50,10, '23-01-20',111), (11, 'Wheat', 55 ,20, '23-01-20',111),
    -> (12, 'Sugar', 70,15, '23-01-20',112),
    -> (13, ' Meat', 300 ,5, '23-01-20',113),
    -> (14, ' Coffee', 400 ,2, '23-01-20',113),
    -> (16, ' Maze', 10 ,75, '23-01-20',116);

--Questions
--order on price in ascending order
SELECT prod_name, price, Qty
    -> FROM prod_tb
    -> ORDER BY price;

--group by count of purchases by customer
 SELECT cust_id,count(cust_id) AS 'Count'
    -> FROM prod_tb
    -> GROUP BY cust_id;

--display customers by total price in ascending order
SELECT cust_id, count(cust_id) as 'No of Purchases', sum(price) as 'Total Cost'
    -> FROM prod_tb
    -> group by cust_id
    -> ORDER BY SUM(price);

--
