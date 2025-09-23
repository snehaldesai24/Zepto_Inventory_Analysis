CREATE DATABASE ZEPTO

USE ZEPTO

--count of rows
SELECT COUNT(*) FROM zepto_v2;

-- Q1. Find the top 10 best-value products based on the discount percentage.
SELECT DISTINCT TOP 10 name, mrp, discountPercent
FROM zepto_v2
ORDER BY discountPercent DESC;

-- Q2. What are the Products with High MRP but Out of Stock
SELECT DISTINCT name, mrp
FROM zepto_v2
WHERE outOfStock = 1 AND mrp > 300
ORDER BY mrp DESC;

-- Q3. Calculate Estimated Revenue for each category
SELECT category,
       SUM(discountedSellingPrice * availableQuantity) AS total_revenue
FROM zepto_v2
GROUP BY category
ORDER BY total_revenue DESC;

-- Q4. Find all products where MRP is greater than ?500 and discount is less than 10%.
SELECT DISTINCT name, mrp, discountPercent
FROM zepto_v2
WHERE mrp > 500 AND discountPercent < 10
ORDER BY mrp DESC, discountPercent DESC;

-- Q5. Identify the top 5 categories offering the highest average discount percentage.
SELECT TOP 5 category,
       ROUND(AVG(discountPercent),2) AS avg_discount
FROM zepto_v2
GROUP BY category
ORDER BY avg_discount DESC;

-- Q6. Find the price per gram for products above 100g and sort by best value.
SELECT DISTINCT name, weightInGms, discountedSellingPrice,
       ROUND(discountedSellingPrice * 1.0 / weightInGms,2) AS price_per_gram
FROM zepto_v2
WHERE weightInGms >= 100
ORDER BY price_per_gram;

-- Q7. Group the products into categories like Low, Medium, Bulk.
SELECT DISTINCT name, weightInGms,
CASE WHEN weightInGms < 1000 THEN 'Low'
     WHEN weightInGms < 5000 THEN 'Medium'
     ELSE 'Bulk'
END AS weight_category
FROM zepto_v2;

-- Q8. What is the Total Inventory Weight Per Category 
SELECT category,
       SUM(weightInGms * availableQuantity) AS total_weight
FROM zepto_v2
GROUP BY category
ORDER BY total_weight DESC;
