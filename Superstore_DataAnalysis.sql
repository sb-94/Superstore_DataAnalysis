/* Find the maximum quantity sold in a transaction 
and how many of those transactions are there within the dataset */

SELECT max(Quantity), count(*)
FROM superstore.tr_orderdetails;

/* Find the unique products in all the transactions 
and what are the maximum quantity sold for each of those products */

SELECT distinct(ProductID) 
FROM superstore.tr_orderdetails;

SELECT DISTINCT(ProductID), Quantity
FROM superstore.tr_orderdetails
WHERE Quantity=3
ORDER BY ProductID asc, Quantity desc ;

/* Find the unique properties */
SELECT distinct(PropertyID)
FROM superstore.tr_orderdetails;

/* Find the product category that has maximum products */
SELECT distinct ProductCategory, COUNT(ProductID) AS COUNT
FROM superstore.tr_products
group by ProductCategory
ORDER BY COUNT(ProductID) DESC;

/* Find the states where most of the stores are present */
SELECT PropertyState, COUNT(PropID) as Count
FROM tr_propertyinfo
GROUP BY PropertyState
ORDER BY COUNT(PropID) DESC;

/* Find the top 5 product IDs that sold max quantity */
SELECT ProductID, sum(Quantity) AS Totalquantity
FROM superstore.tr_orderdetails
GROUP BY ProductID
ORDER BY 2 DESC
LIMIT 5;

/* Find the top 5 propertyIDs that sold max.quantity */
SELECT PropertyID, sum(Quantity) AS Totalquantity
FROM superstore.tr_orderdetails
GROUP BY PropertyID
ORDER BY 2 DESC
LIMIT 5;

/* Find the top 5 product names that sold maximum quantity */
SELECT o.ProductID, p.ProductName, p.ProductCategory, p.price, SUM(o.Quantity) AS Totalquantity
FROM superstore.tr_orderdetails AS o
JOIN superstore.tr_products AS p
ON o.ProductID = p.ProductID
GROUP BY ProductID
ORDER BY Totalquantity DESC
LIMIT 5;

/* Find the top 5 product names that did max. sales */
SELECT o.ProductID, p.ProductName, p.ProductCategory, (o.Quantity*p.Price) AS sales
FROM superstore.tr_orderdetails AS o
JOIN superstore.tr_products AS p
ON o.ProductID = p.ProductID
GROUP BY ProductID
ORDER BY sales DESC
LIMIT 5;

/* Find the top 5 cities that did maximum sales */
SELECT o.PropertyID, prop.PropertyCity, prop.PropertyState, sum(prod.price*o.Quantity) AS Sales
FROM superstore.tr_products AS prod
JOIN superstore.tr_orderdetails AS o
ON prod.ProductID = o.ProductID
JOIN superstore.tr_propertyinfo prop
ON o.PropertyID = prop.PropID
GROUP BY o.PropertyID
ORDER BY sales DESC
LIMIT 5;

/* Find the top 5 products in each of the cities in terms of sales*/
# For Denver
SELECT prod.ProductName, prop.PropertyCity, SUM(o.Quantity*prod.Price) AS Sales
FROM superstore.tr_products AS prod
JOIN superstore.tr_orderdetails AS o
ON prod.ProductID = o.ProductID
JOIN superstore.tr_propertyinfo prop
ON o.PropertyID = prop.PropID
WHERE PropertyCity ="Denver"
GROUP BY prop.PropertyCity, prod.ProductName
ORDER BY Sales DESC
LIMIT 5;

# For Arlington
SELECT prod.ProductName, prop.PropertyCity, SUM(o.Quantity*prod.Price) AS Sales
FROM superstore.tr_products AS prod
JOIN superstore.tr_orderdetails AS o
ON prod.ProductID = o.ProductID
JOIN superstore.tr_propertyinfo prop
ON o.PropertyID = prop.PropID
WHERE PropertyCity ="Arlington"
GROUP BY prop.PropertyCity, prod.ProductName
ORDER BY Sales DESC
LIMIT 5;
# For New York
SELECT prod.ProductName, prop.PropertyCity, SUM(o.Quantity*prod.Price) AS Sales
FROM superstore.tr_products AS prod
JOIN superstore.tr_orderdetails AS o
ON prod.ProductID = o.ProductID
JOIN superstore.tr_propertyinfo prop
ON o.PropertyID = prop.PropID
WHERE PropertyCity ="New York"
GROUP BY prop.PropertyCity, prod.ProductName
ORDER BY Sales DESC
LIMIT 5;
# For Cincinnati
SELECT prod.ProductName, prop.PropertyCity, SUM(o.Quantity*prod.Price) AS Sales
FROM superstore.tr_products AS prod
JOIN superstore.tr_orderdetails AS o
ON prod.ProductID = o.ProductID
JOIN superstore.tr_propertyinfo prop
ON o.PropertyID = prop.PropID
WHERE PropertyCity ="Cincinnati"
GROUP BY prop.PropertyCity, prod.ProductName
ORDER BY Sales DESC
LIMIT 5;
# For Portland
SELECT prod.ProductName, prop.PropertyCity, SUM(o.Quantity*prod.Price) AS Sales
FROM superstore.tr_products AS prod
JOIN superstore.tr_orderdetails AS o
ON prod.ProductID = o.ProductID
JOIN superstore.tr_propertyinfo prop
ON o.PropertyID = prop.PropID
WHERE PropertyCity ="Portland"
GROUP BY prop.PropertyCity, prod.ProductName
ORDER BY Sales DESC
LIMIT 5;
# For Seattle
SELECT prod.ProductName, prop.PropertyCity, SUM(o.Quantity*prod.Price) AS Sales
FROM superstore.tr_products AS prod
JOIN superstore.tr_orderdetails AS o
ON prod.ProductID = o.ProductID
JOIN superstore.tr_propertyinfo prop
ON o.PropertyID = prop.PropID
WHERE PropertyCity ="Seattle"
GROUP BY prop.PropertyCity, prod.ProductName
ORDER BY Sales DESC
LIMIT 5;
# For Kansas City
SELECT prod.ProductName, prop.PropertyCity, SUM(o.Quantity*prod.Price) AS Sales
FROM superstore.tr_products AS prod
JOIN superstore.tr_orderdetails AS o
ON prod.ProductID = o.ProductID
JOIN superstore.tr_propertyinfo prop
ON o.PropertyID = prop.PropID
WHERE PropertyCity ="Kansas City"
GROUP BY prop.PropertyCity, prod.ProductName
ORDER BY Sales DESC
LIMIT 5;
# For Orlando
SELECT prod.ProductName, prop.PropertyCity, SUM(o.Quantity*prod.Price) AS Sales
FROM superstore.tr_products AS prod
JOIN superstore.tr_orderdetails AS o
ON prod.ProductID = o.ProductID
JOIN superstore.tr_propertyinfo prop
ON o.PropertyID = prop.PropID
WHERE PropertyCity ="Orlando"
GROUP BY prop.PropertyCity, prod.ProductName
ORDER BY Sales DESC
LIMIT 5;
# For Boston
SELECT prod.ProductName, prop.PropertyCity, SUM(o.Quantity*prod.Price) AS Sales
FROM superstore.tr_products AS prod
JOIN superstore.tr_orderdetails AS o
ON prod.ProductID = o.ProductID
JOIN superstore.tr_propertyinfo prop
ON o.PropertyID = prop.PropID
WHERE PropertyCity ="Boston"
GROUP BY prop.PropertyCity, prod.ProductName
ORDER BY Sales DESC
LIMIT 5;
# For Philadelphia
SELECT prod.ProductName, prop.PropertyCity, SUM(o.Quantity*prod.Price) AS Sales
FROM superstore.tr_products AS prod
JOIN superstore.tr_orderdetails AS o
ON prod.ProductID = o.ProductID
JOIN superstore.tr_propertyinfo prop
ON o.PropertyID = prop.PropID
WHERE PropertyCity ="Philadelphia"
GROUP BY prop.PropertyCity, prod.ProductName
ORDER BY Sales DESC
LIMIT 5;
# For Richmond
SELECT prod.ProductName, prop.PropertyCity, SUM(o.Quantity*prod.Price) AS Sales
FROM superstore.tr_products AS prod
JOIN superstore.tr_orderdetails AS o
ON prod.ProductID = o.ProductID
JOIN superstore.tr_propertyinfo prop
ON o.PropertyID = prop.PropID
WHERE PropertyCity ="Richmond"
GROUP BY prop.PropertyCity, prod.ProductName
ORDER BY Sales DESC
LIMIT 5;
# For Atlanta
SELECT prod.ProductName, prop.PropertyCity, SUM(o.Quantity*prod.Price) AS Sales
FROM superstore.tr_products AS prod
JOIN superstore.tr_orderdetails AS o
ON prod.ProductID = o.ProductID
JOIN superstore.tr_propertyinfo prop
ON o.PropertyID = prop.PropID
WHERE PropertyCity ="Atlanta"
GROUP BY prop.PropertyCity, prod.ProductName
ORDER BY Sales DESC
LIMIT 5;
# For Dallas
SELECT prod.ProductName, prop.PropertyCity, SUM(o.Quantity*prod.Price) AS Sales
FROM superstore.tr_products AS prod
JOIN superstore.tr_orderdetails AS o
ON prod.ProductID = o.ProductID
JOIN superstore.tr_propertyinfo prop
ON o.PropertyID = prop.PropID
WHERE PropertyCity ="Dallas"
GROUP BY prop.PropertyCity, prod.ProductName
ORDER BY Sales DESC
LIMIT 5;
# For New Orleans
SELECT prod.ProductName, prop.PropertyCity, SUM(o.Quantity*prod.Price) AS Sales
FROM superstore.tr_products AS prod
JOIN superstore.tr_orderdetails AS o
ON prod.ProductID = o.ProductID
JOIN superstore.tr_propertyinfo prop
ON o.PropertyID = prop.PropID
WHERE PropertyCity ="New Orleans"
GROUP BY prop.PropertyCity, prod.ProductName
ORDER BY Sales DESC
LIMIT 5;
# For Nashville
SELECT prod.ProductName, prop.PropertyCity, SUM(o.Quantity*prod.Price) AS Sales
FROM superstore.tr_products AS prod
JOIN superstore.tr_orderdetails AS o
ON prod.ProductID = o.ProductID
JOIN superstore.tr_propertyinfo prop
ON o.PropertyID = prop.PropID
WHERE PropertyCity ="Nashville"
GROUP BY prop.PropertyCity, prod.ProductName
ORDER BY Sales DESC
LIMIT 5;
# For Chicago
SELECT prod.ProductName, prop.PropertyCity, SUM(o.Quantity*prod.Price) AS Sales
FROM superstore.tr_products AS prod
JOIN superstore.tr_orderdetails AS o
ON prod.ProductID = o.ProductID
JOIN superstore.tr_propertyinfo prop
ON o.PropertyID = prop.PropID
WHERE PropertyCity ="Chicago"
GROUP BY prop.PropertyCity, prod.ProductName
ORDER BY Sales DESC
LIMIT 5;
# For Las Vegas
SELECT prod.ProductName, prop.PropertyCity, SUM(o.Quantity*prod.Price) AS Sales
FROM superstore.tr_products AS prod
JOIN superstore.tr_orderdetails AS o
ON prod.ProductID = o.ProductID
JOIN superstore.tr_propertyinfo prop
ON o.PropertyID = prop.PropID
WHERE PropertyCity ="Las Vegas"
GROUP BY prop.PropertyCity, prod.ProductName
ORDER BY Sales DESC
LIMIT 5;
# For San Francisco
SELECT prod.ProductName, prop.PropertyCity, SUM(o.Quantity*prod.Price) AS Sales
FROM superstore.tr_products AS prod
JOIN superstore.tr_orderdetails AS o
ON prod.ProductID = o.ProductID
JOIN superstore.tr_propertyinfo prop
ON o.PropertyID = prop.PropID
WHERE PropertyCity ="San Francisco"
GROUP BY prop.PropertyCity, prod.ProductName
ORDER BY Sales DESC
LIMIT 5;
# For Phoenix
SELECT prod.ProductName, prop.PropertyCity, SUM(o.Quantity*prod.Price) AS Sales
FROM superstore.tr_products AS prod
JOIN superstore.tr_orderdetails AS o
ON prod.ProductID = o.ProductID
JOIN superstore.tr_propertyinfo prop
ON o.PropertyID = prop.PropID
WHERE PropertyCity ="Phoenix"
GROUP BY prop.PropertyCity, prod.ProductName
ORDER BY Sales DESC
LIMIT 5; 











 










