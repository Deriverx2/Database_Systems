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

--display customer id by people having total price greater than 100
SELECT cust_id, count(cust_id) as 'No of Purchases', sum(price) as 'Total Cost'
    -> FROM prod_tb
    -> group by cust_id
    -> HAVING SUM(price)>100
    -> ORDER BY SUM(price);

--display cust_id,cust_name,prod_name,price for matching col on two tables
SELECT cust_tb.cust_id,cust_tb.cust_name,
    -> prod_tb.prod_name, prod_tb.price
    -> FROM cust_tb INNER JOIN prod_tb
    -> ON cust_tb.cust_id=prod_tb.cust_id;
--using aliases
 SELECT c.cust_id,c.cust_name,
    -> p.prod_name, p.price
    -> FROM cust_tb c INNER JOIN prod_tb p
    -> ON c.cust_id=p.cust_id;

--USE LEFT JOIN
 SELECT c.cust_id,c.cust_name,
    -> p.prod_name, p.price
    -> FROM cust_tb c LEFT JOIN prod_tb p
    -> ON c.cust_id=p.cust_id;

--USE RIGHT JOIN
 SELECT c.cust_id,c.cust_name,
    -> p.prod_name, p.price
    -> FROM cust_tb c RIGHT JOIN prod_tb p
    -> ON c.cust_id=p.cust_id;

--USE CROSS JOIN(not good for big tables)
 SELECT c.cust_id,c.cust_name,
    -> p.prod_name, p.price
    -> FROM cust_tb c CROSS JOIN prod_tb p
    -> ON c.cust_id=p.cust_id;

--display(self join)


