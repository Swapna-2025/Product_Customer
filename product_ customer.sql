use assignment;

-- 1st Table:-
CREATE TABLE Customers (
customer_id INT PRIMARY KEY,
first_name VARCHAR(50),
last_name VARCHAR(50),
email VARCHAR(100),
city VARCHAR(50),
state VARCHAR(50),
signup_date DATE 
);
describe customers;

INSERT INTO Customers VALUES 
(1, 'Tony', 'Stark', 'tony.stark@starkindustries.com', 'New York', 'NY', 
'2023-01-05'), 
(2, 'Bruce', 'Wayne', 'bruce.wayne@wayneenterprises.com', 'Gotham', 
'NJ', '2023-03-15'), 
(3, 'Peter', 'Parker', 'peter.parker@dailybugle.com', 'Queens', 'NY', 
'2023-06-01'), 
(4, 'Clark', 'Kent', 'clark.kent@dailyplanet.com', 'Metropolis', 'IL', 
'2023-08-10'), 
(5, 'Diana', 'Prince', 'diana.prince@themiscira.com', 'Washington', 'DC', 
'2023-09-20'), 
(6, 'Stephen', 'Strange', 'stephen.strange@kamar-taj.org', 'New York', 
'NY', '2023-11-25'), 
(7, 'Natasha', 'Romanoff', 'natasha.romanoff@shield.gov', 'Stalingrad', 
'RU', '2024-01-12'), 
(8, 'Steve', 'Rogers', 'steve.rogers@avengers.org', 'Brooklyn', 'NY', 
'2024-02-14'), 
(9, 'T\'Challa', 'Udaku', 'tchalla@wakanda.gov', 'Birnin Zana', 'WA', 
'2024-03-21'), 
(10, 'Carol', 'Danvers', 'carol.danvers@starforce.mil', 'Boston', 'MA', 
'2024-04-01'); 

select * from customers;


-- 2nd Table:-
CREATE TABLE Products (
product_id INT PRIMARY KEY,     
product_name VARCHAR(100),     
category VARCHAR(50),     
price DECIMAL(10, 2),     
stock_quantity INT 
); 
describe Products;

INSERT INTO Products VALUES 
(1, 'Arc Reactor', 'Tech', 999.99, 5), 
(2, 'Batarang Set', 'Weapons', 149.99, 25), 
(3, 'Web Shooter', 'Tech', 299.99, 12), 
(4, 'Kryptonite Ring', 'Accessories', 499.99, 3), 
(5, 'Lasso of Truth', 'Weapons', 199.99, 10), 
(6, 'Cloak of Levitation', 'Apparel', 799.99, 7), 
(7, 'Widow’s Bite', 'Weapons', 249.99, 20), 
(8, 'Vibranium Shield', 'Defense', 499.99, 6), 
(9, 'Kimoyo Beads', 'Tech', 349.99, 15), 
(10, 'Photon Blaster', 'Weapons', 599.99, 8), (11, 'Infinity Gauntlet', 'Relic', 9999.99, 2), 
(12, 'Mjolnir Replica', 'Weapons', 599.99, 9), 
(13, 'Black Panther Suit', 'Apparel', 1499.99, 4), 
(14, 'Iron Spider Suit', 'Apparel', 1999.99, 3), 
(15, 'WayneTech Grappler', 'Tech', 399.99, 11), 
(16, 'Daily Planet Mug', 'Merch', 19.99, 100), 
(17, 'SHIELD Badge', 'Merch', 29.99, 40), 
(18, 'Starforce Helmet', 'Apparel', 299.99, 10), 
(19, 'Kamar-Taj Spellbook', 'Books', 699.99, 5), 
(20, 'Ant-Man Suit', 'Apparel', 1299.99, 3); 

select * from Products;


-- 3rd Table:-
CREATE TABLE Orders (
order_id INT PRIMARY KEY,     
customer_id INT,     
order_date DATE,     
total_amount DECIMAL(10, 2),     
FOREIGN KEY (customer_id) REFERENCES Customers(customer_id) ); 

describe Orders;

INSERT INTO Orders VALUES (1, 1, '2023-01-06', 1499.98), (2, 2, '2023-03-16', 549.98), (3, 3, '2023-06-02', 299.99), (4, 4, '2023-08-11', 499.99), (5, 5, '2023-09-21', 199.99), (6, 6, '2023-11-26', 799.99), (7, 7, '2024-01-13', 249.99), (8, 8, '2024-02-15', 499.99), (9, 9, '2024-03-22', 1349.98), (10, 10, '2024-04-02', 599.99), (11, 1, '2023-02-01', 999.99), 
(12, 2, '2023-04-01', 149.99), (13, 3, '2023-06-10', 849.98), (14, 4, '2023-08-12', 19.99), (15, 5, '2023-10-01', 9999.99), (16, 6, '2023-12-01', 1199.99), (17, 7, '2024-01-20', 699.99), (18, 8, '2024-02-20', 29.99), (19, 9, '2024-03-30', 349.99), (20, 10, '2024-04-05', 1999.99); 

select * from orders;


-- 4th Table:-
CREATE TABLE OrderItems (
order_item_id INT PRIMARY KEY,     
order_id INT,     
product_id INT,     
quantity INT, 
price DECIMAL(10, 2), 
FOREIGN KEY (order_id) REFERENCES Orders(order_id), 
FOREIGN KEY (product_id) REFERENCES Products(product_id) 
); 

describe OrderItems;

INSERT INTO OrderItems VALUES 
(1, 1, 1, 1, 999.99), 
(2, 1, 2, 1, 499.99), 
(3, 2, 2, 2, 149.99), 
(4, 3, 3, 1, 299.99), 
(5, 4, 4, 1, 499.99), 
(6, 5, 5, 1, 199.99), 
(7, 6, 6, 1, 799.99), 
(8, 7, 7, 1, 249.99), 
(9, 8, 8, 1, 499.99), 
(10, 9, 9, 2, 1349.98), 
(11, 10, 10, 1, 599.99), 
(12, 11, 1, 1, 999.99), 
(13, 12, 2, 1, 149.99), 
(14, 13, 14, 1, 1999.99), 
(15, 13, 15, 1, 399.99), 
(16, 14, 16, 1, 19.99), 
(17, 15, 11, 1, 9999.99), 
(18, 16, 20, 1, 1299.99), 
(19, 17, 19, 1, 699.99), 
(20, 18, 17, 1, 29.99); 

select * from orderitems;


-- 5th Table:-
CREATE TABLE Payments (
payment_id INT PRIMARY KEY,     
order_id INT,     
payment_date DATE,     
payment_method VARCHAR(50),     
amount DECIMAL(10, 2), 
FOREIGN KEY (order_id) REFERENCES Orders(order_id) 
); 

describe Payments;

INSERT INTO Payments VALUES 
(1, 1, '2023-01-07', 'Credit Card', 1499.98), 
(2, 2, '2023-03-17', 'PayPal', 549.98), 
(3, 3, '2023-06-03', 'Credit Card', 299.99), 
(4, 4, '2023-08-12', 'Debit Card', 499.99), 
(5, 5, '2023-09-22', 'Net Banking', 199.99), 
(6, 6, '2023-11-27', 'Credit Card', 799.99), 
(7, 7, '2024-01-14', 'PayPal', 249.99), 
(8, 8, '2024-02-16', 'Debit Card', 499.99), 
(9, 9, '2024-03-23', 'Credit Card', 1349.98), 
(10, 10, '2024-04-03', 'PayPal', 599.99), 
(11, 11, '2023-02-02', 'Net Banking', 999.99), 
(12, 12, '2023-04-02', 'UPI', 149.99), 
(13, 13, '2023-06-11', 'UPI', 849.98), 
(14, 14, '2023-08-13', 'Debit Card', 19.99), 
(15, 15, '2023-10-02', 'Credit Card', 9999.99), 
(16, 16, '2023-12-02', 'Net Banking', 1199.99), 
(17, 17, '2024-01-21', 'PayPal', 699.99), 
(18, 18, '2024-02-21', 'UPI', 29.99), 
(19, 19, '2024-03-31', 'Credit Card', 349.99), 
(20, 20, '2024-04-06', 'Debit Card', 1999.99); 

select * from payments;


-- INSIGHTS :-

-- 1. Retrieve all customers. 
SELECT * FROM Customers;


-- 2. Get the first 10 products with stock greater than 100. 
select * from products
where stock_quantity>100
limit 10;                 -- There is no product with stock quantity greater than 100
---------
select * from products
where stock_quantity >= 100
limit 10;


-- 3. Find all orders placed on '2023-12-01'. 
SELECT * FROM Orders 
WHERE order_date = '2023-12-01';


-- 4. Show distinct product categories. 
SELECT DISTINCT category 
FROM Products;


-- 5. Count total number of customers. 
select count(customer_id) as total_customers
from customers;


-- 6. List customers from 'California'. 
SELECT * FROM Customers 
WHERE city = 'California';            -- there is no match


-- 7. Find average product price. 
select avg(price) as avg_price
from products;


-- 8. Get the most expensive product. 
SELECT * FROM Products 
ORDER BY price DESC 
LIMIT 1;


-- 9. List customers who signed up in 2024. 
SELECT * FROM Customers 
WHERE signup_date between '2024-01-01' and'2024-12-31';


-- 10. Count number of orders per customer. 
SELECT customer_id, COUNT(*) AS order_count 
FROM Orders 
GROUP BY customer_id;
 

-- 11. Get total sales amount (sum of total_amount) in 2023. 
SELECT SUM(total_amount) AS total_sales_2023 
FROM Orders 
WHERE order_date BETWEEN '2023-01-01' AND '2023-12-31';


-- 12. Get all payments made using 'Credit Card'. 
select * from Payments
where payment_method ='Credit Card';


-- 13. Find customers with 'gmail.com' emails. 
select * from customers
where email='gmail.com';           -- No records found


-- 14. Show product names and prices under $50. 
select product_name , price
from products
where price<=50; 


-- 15. Sort customers by signup date (newest first). 
select first_name as customer_name, last_name as customer_surname, signup_date
from customers
order by signup_date desc;


-- 16. Show how many products are in each category. 
SELECT category, COUNT(*) AS product_count 
FROM Products 
GROUP BY category;


-- 17. Find total stock available across all products. 
SELECT SUM(stock_quantity) AS total_stock 
FROM Products;


-- 18. List top 5 highest-priced products. 
SELECT * FROM Products
order by price desc
limit 5;


-- 19. Count how many orders each customer has. 
SELECT customer_id, COUNT(order_id) AS order_count 
FROM Orders 
GROUP BY customer_id;


-- 20. Show orders where total_amount > 1000. 
SELECT * FROM Orders 
WHERE total_amount > 1000;


-- 21. Find total revenue generated per month. 
SELECT LEFT(order_date, 7) AS month, SUM(total_amount) AS revenue
FROM Orders
GROUP BY LEFT(order_date, 7)
ORDER BY month;


-- 22. List customers who haven’t placed any orders. 
SELECT * FROM Customers 
WHERE customer_id NOT IN (
SELECT DISTINCT customer_id FROM Orders
);                                         -- no matching found


-- 23. Find the number of products sold in each category. 
SELECT category, count(product_id) as no_of_products 
FROM Products 
group by category;


-- 24. Get customer names with total purchase over $5000. 
SELECT c.first_name, c.last_name, SUM(o.total_amount) AS total_purchase
FROM Customers c
JOIN Orders o 
ON c.customer_id = o.customer_id
GROUP BY c.customer_id
HAVING total_purchase > 5000;


-- 25. Identify top 10 customers by purchase amount. 
SELECT c.customer_id, c.first_name, c.last_name, SUM(o.total_amount) AS total_purchase_amount
FROM Customers c
JOIN Orders o 
ON c.customer_id = o.customer_id
GROUP BY c.customer_id
ORDER BY total_purchase_amount DESC
LIMIT 10;


-- 26. Show orders along with customer names (JOIN). 
SELECT o.*, c.first_name, c.last_name
FROM Orders o
JOIN Customers c 
ON o.customer_id = c.customer_id;


-- 27. List each order with its items and total order value. 
SELECT oi.order_id,
GROUP_CONCAT(p.product_name) AS products,
SUM(oi.price) AS order_total
FROM OrderItems oi
JOIN Products p 
ON oi.product_id = p.product_id
GROUP BY oi.order_id;


-- 28. Find the most ordered product by quantity. 
SELECT p.product_name, SUM(oi.quantity) AS total_quantity
FROM OrderItems oi
JOIN Products p 
ON oi.product_id = p.product_id
GROUP BY oi.product_id
ORDER BY total_quantity DESC
LIMIT 1;


-- 29. List products that were never sold. 
SELECT * FROM Products 
WHERE product_id NOT IN (
SELECT DISTINCT product_id FROM OrderItems
);


-- 30. Find average order value per customer. 
SELECT customer_id, AVG(total_amount) AS avg_order_value
FROM Orders
GROUP BY customer_id;


-- 31. List orders with more than 3 different products. 
SELECT order_id FROM OrderItems
GROUP BY order_id
HAVING COUNT(DISTINCT product_id) > 3;           -- No matching is found


-- 32. Get customers who placed orders in both 2023 and 2024. 
SELECT customer_id
FROM Orders
WHERE YEAR(order_date) = 2023
AND customer_id IN (
SELECT customer_id
FROM Orders
WHERE YEAR(order_date) = 2024                      -- No matching is found
);


-- 33. Calculate the reorder rate per product.
SELECT product_id, COUNT(DISTINCT order_id) AS times_ordered
FROM OrderItems
GROUP BY product_id;


 -- 34. Find customers who used more than 1 payment method.
SELECT o.customer_id
FROM Payments p
JOIN Orders o ON p.order_id = o.order_id
GROUP BY o.customer_id
HAVING COUNT(DISTINCT p.payment_method) > 1;


-- 35. Identify the product with the highest revenue. 
SELECT p.product_name, SUM(oi.price * oi.quantity) AS total_revenue
FROM OrderItems oi
JOIN Products p ON oi.product_id = p.product_id
GROUP BY p.product_id
ORDER BY total_revenue DESC
LIMIT 1;


-- 36. List top 5 cities with most orders. 
SELECT C.city,count(O.order_id) AS most_ordered
FROM customers c
JOIN orders o 
ON c.customer_id=o.customer_id
GROUP BY city
ORDER BY most_ordered DESC
LIMIT 5;


-- 37. Get month-wise new customer registrations. 
SELECT DATE_FORMAT(signup_date, '%Y-%m') AS signup_month, COUNT(customer_id) AS count_customers
FROM Customers
GROUP BY signup_month
ORDER BY signup_month;


-- 38. List orders placed within 7 days of customer signup. 
SELECT o.*
FROM Orders o
JOIN Customers c ON o.customer_id = c.customer_id
WHERE DATEDIFF(o.order_date, c.signup_date) <= 7;


-- 39. Show total quantity sold and revenue for each product. 
SELECT p.product_name, SUM(oi.quantity) AS total_quantity, SUM(oi.price * oi.quantity) AS total_revenue
FROM OrderItems oi
JOIN Products p ON oi.product_id = p.product_id
GROUP BY p.product_id;


-- 40. Get product sales for a specific date range. 
SELECT p.product_name, SUM(oi.quantity) AS quantity_sold
FROM OrderItems oi
JOIN Orders o ON oi.order_id = o.order_id
JOIN Products p ON oi.product_id = p.product_id
WHERE o.order_date BETWEEN '2024-01-01' AND '2024-12-31'
GROUP BY p.product_name;


-- 41. Write a query to get cohort analysis of customers (group by signup month and orders). 
SELECT 
DATE_FORMAT(c.signup_date, '%Y-%m') AS cohort_month,
COUNT(DISTINCT o.order_id) AS total_orders
FROM Customers c
LEFT JOIN Orders o ON c.customer_id = o.customer_id
GROUP BY cohort_month;


-- 42. Calculate average time between order and payment. 
SELECT AVG(DATEDIFF(p.payment_date, o.order_date)) AS avg_days
FROM Orders o
JOIN Payments p ON o.order_id = p.order_id;


-- 43. Create a view to show customer order summary (total orders, total spent). 
CREATE VIEW customer_order_summary AS
SELECT 
c.customer_id,
c.first_name,
c.last_name,
COUNT(o.order_id) AS total_orders,
SUM(o.total_amount) AS total_spent
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id;
select * from customer_order_summary;


-- 44. Identify customers who haven’t made a purchase in the last 6 months. 
SELECT * FROM Customers
WHERE customer_id NOT IN (
SELECT DISTINCT customer_id 
FROM Orders 
WHERE order_date >= DATE_SUB(CURDATE(), INTERVAL 6 MONTH)
);


-- 45. Find average order value per category. 
SELECT p.category, AVG(oi.price * oi.quantity) AS avg_order_value
FROM OrderItems oi
JOIN Products p ON oi.product_id = p.product_id
GROUP BY p.category;


-- 46. Get top 5 products with highest cart abandonment (ordered less vs. stocked more). 
select p.product_name, oi.order_item_id, p.stock_quantity 
from orderitems oi 
join products p on (p.product_id=oi.product_id)
where (order_item_id < stock_quantity);


-- 47.  Find duplicate customer emails.              -- No matching found
select email , count(*) as email_number
from customers
group by email
having count(*) >1;


-- 48. Use CTE to find top spending customers in the last quarter. 
WITH LastQuarterPayments AS (
  SELECT o.customer_id, p.amount
  FROM Payments p
  JOIN Orders o ON o.order_id = p.order_id
  WHERE p.payment_date >= DATE_SUB(
    (SELECT MAX(payment_date) FROM Payments), INTERVAL 3 MONTH)
),
CustomerSpending AS (
  SELECT customer_id, SUM(amount) AS total_spent
  FROM LastQuarterPayments
  GROUP BY customer_id
)
SELECT c.customer_id, c.first_name, c.last_name, cs.total_spent
FROM CustomerSpending cs
JOIN Customers c ON cs.customer_id = c.customer_id
ORDER BY cs.total_spent DESC;


-- 49. Use CASE to categorize customers into bronze/silver/gold based on spending
WITH CustomerSpending AS (
SELECT c.customer_id, c.first_name, c.last_name, SUM(o.total_amount) AS total_spent
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name
)
SELECT customer_id, first_name, last_name, total_spent,
CASE 
WHEN total_spent >= 5000 THEN 'Gold'
WHEN total_spent >= 2000 THEN 'Silver'
ELSE 'Bronze'
END AS customer_tier
FROM CustomerSpending
ORDER BY 
CASE 
WHEN total_spent >= 5000 THEN 1
WHEN total_spent >= 2000 THEN 2
ELSE 3
END,
total_spent DESC;

 















