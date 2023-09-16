# Queries

use mysqlproject;

-- 1
SELECT products.p_id,orders.Title,orders.FirstName,orders.LastName,products.ProductLabel
FROM orders
JOIN products
ON(orders.ProductId = products.p_id)
;

-- 2
SELECT suppliers.s_id,suppliers.supplier,products.p_id,products.ProductLabel
FROM suppliers
JOIN purchases
ON(suppliers.s_id = purchases.SupplierId)
JOIN products
ON(purchases.ProductId = products.p_id)
;

-- 3
SELECT products.productName, purchases.productId,purchases.PurchaseDate
FROM products
JOIN purchases
ON(products.p_id = purchases.productId)
;

-- 4
SELECT products.productLabel,products.inventoryOnHand,purchases.numberReceived,purchases.purchaseDate
FROM products
JOIN purchases
ON(products.p_Id = purchases.productId)
;

-- 5
SELECT CONCAT(FirstName,' ',LastName) AS FullName,products.productLabel,orders.orderdate
FROM orders
JOIN products
ON(orders.ProductId = products.p_id)
;

-- 6
SELECT orders.FirstName,products.p_id,orders.Orderdate
FROM orders
RIGHT JOIN products
ON (orders.ProductId = products.p_id)
order by FirstName
;

-- 7
SELECT products.ProductLabel,products.MinimumRequired,purchases.NumberReceived
FROM products
JOIN purchases
ON (products.p_id = purchases.ProductId)
;

-- 8
SELECT OrderDate,products.productLabel,
CASE
WHEN OrderDate <= '2020-12-31' THEN "Orders placed in year 2020"
WHEN OrderDate >= '2021-01-01' AND OrderDate <= '2021-12-31' THEN "Orders placed in year 2021"
ELSE "orders placed after 2022"
END AS OrdersPlaced_year
FROM orders
JOIN products
ON (orders.ProductId = products.p_id)
;

-- 9
SELECT ProductLabel,COUNT(ProductLabel),purchases.ProductId
FROM products
JOIN purchases
on (products.p_id = purchases.ProductId)
GROUP BY ProductLabel
;

-- 10
SELECT CONCAT(Title,' ',FirstName,' ',LastName) AS FullName,Orderdate,products.ProductLabel
FROM orders
JOIN products
ON (orders.ProductId = products.p_id)
WHERE OrderDate >= '2022-01-01'
;

-- 11
select productName, CONCAT(FirstName,' ',LastName) AS FullName
from products
join orders
on(products.p_id = orders.ProductId)
where ProductName = 'Apple'
;

-- 12
select suppliers.supplier,products.Productlabel
from suppliers
join purchases
on (suppliers.s_id = purchases.SupplierId)
join products
on (purchases.ProductId = products.p_id)
where supplier = 'Braino Services'
group by supplier
;

-- 13
select suppliers.supplier,count(orders.o_id) AS numberOfOrder
FROM suppliers
join purchases
on(suppliers.s_id = purchases.SupplierId)
join products
on (purchases.ProductId = products.p_id)
join orders
on(products.p_id = orders.ProductId)
group by supplier
;

-- 14
select purchases.ProductId AS purchaseDetail, products.ProductLabel,products.p_id As productsDetail
from purchases
join products
on purchases.ProductId = products.p_id
group by productLabel
;

-- 15
select concat(Title,' ',FirstName,' ',Lastname) AS fullName, products.productLabel, orders.orderDate
from orders
JOIN products
ON (orders.ProductId = products.p_id)
where FirstName LIKE 'b%' and LastName LIKE '%e'
;

-- 16
select concat(FirstName,' ', LastName) AS fullName, orders.orderdate, products.productLabel
From orders
join products
on(orders.ProductId = products.p_id)
where orderdate between '2021-01-01' and '2021-12-31'
;

-- 17
select count(orders.o_id)
from orders
where orderdate between '2020-01-01' and '2021-01-01'
;

-- 18
-- select * from orders partition by(p2020)
-- where OrderDate = '2021-01-01' and OrderDate <= '2021-06-01'
-- ;

-- 19
select distinct Title,count(Title)
from orders
group by title
order by Title asc
;






