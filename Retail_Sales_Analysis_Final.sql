-- Total Revenue by Product
Use rs_a;
SELECT p.product_name, SUM(s.quantity * p.price) AS total_revenue
FROM sales s
JOIN products p ON s.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_revenue DESC;

-- Total Revenue by Region
SELECT c.region, SUM(s.quantity * p.price) AS total_revenue
FROM sales s
JOIN customers c ON s.customer_id = c.customer_id
JOIN products p ON s.product_id = p.product_id
GROUP BY c.region
ORDER BY total_revenue DESC;

-- Top 5 Customers by Spending
SELECT c.customer_name, SUM(s.quantity * p.price) AS total_spent
FROM sales s
JOIN customers c ON s.customer_id = c.customer_id
JOIN products p ON s.product_id = p.product_id
GROUP BY c.customer_name
ORDER BY total_spent DESC
LIMIT 5;

-- Monthly Sales Trend
SELECT MONTH(s.sale_date) AS month, SUM(s.quantity * p.price) AS monthly_sales
FROM sales s
JOIN products p ON s.product_id = p.product_id
GROUP BY MONTH(s.sale_date)
ORDER BY month;

-- Best-Selling Category
SELECT p.category, SUM(s.quantity) AS total_quantity
FROM sales s
JOIN products p ON s.product_id = p.product_id
GROUP BY p.category
ORDER BY total_quantity DESC;

--  Average Sale Value
SELECT ROUND(AVG(s.quantity * p.price), 2) AS avg_sale_value
FROM sales s
JOIN products p ON s.product_id = p.product_id;