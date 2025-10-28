# 🛍️ Retail Sales SQL Project

## 📘 Overview
This project analyzes retail sales data using **SQL** to gain insights into customer behavior, product performance, and overall sales trends. The goal is to demonstrate SQL proficiency through structured queries, joins, subqueries, and data analysis operations.

---

## 🗂️ Database Structure
The project consists of **three main tables**:

### 1. Customers
Stores customer details such as ID, name, location, and contact info.
```sql
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    city VARCHAR(30),
    state VARCHAR(30),
    email VARCHAR(100)
);
```

### 2. Products
Contains details of products available in the store.
```sql
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    category VARCHAR(30),
    price DECIMAL(10,2)
);
```

### 3. Sales
Tracks each sale transaction, linking customers and products.
```sql
CREATE TABLE sales (
    sale_id INT PRIMARY KEY,
    sale_date DATE,
    customer_id INT,
    product_id INT,
    quantity INT,
    total_amount DECIMAL(10,2),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);
```

---

## 🧩 Data Insertion
Each table includes **10–15 rows** of realistic sample data for testing and analysis.
```sql
INSERT INTO customers VALUES (...);
INSERT INTO products VALUES (...);
INSERT INTO sales VALUES (...);
```

---

## 🧠 SQL Concepts Used
This project demonstrates understanding of key SQL concepts such as:

- **DDL (Data Definition Language)** – CREATE, ALTER, DROP  
- **DML (Data Manipulation Language)** – INSERT, UPDATE, DELETE  
- **DQL (Data Query Language)** – SELECT, WHERE, ORDER BY, GROUP BY  
- **Joins** – INNER JOIN, LEFT JOIN  
- **Aggregate Functions** – SUM(), AVG(), COUNT(), MAX(), MIN()  
- **Filtering & Sorting** – conditions with WHERE, BETWEEN, LIKE  
- **Subqueries** and **Nested SELECTs** for deeper insights  

---

## 📊 Example Queries

### 1. Top 5 Customers by Total Spending
```sql
SELECT c.customer_name, SUM(s.total_amount) AS total_spent
FROM customers c
JOIN sales s ON c.customer_id = s.customer_id
GROUP BY c.customer_name
ORDER BY total_spent DESC
LIMIT 5;
```

### 2. Most Sold Products
```sql
SELECT p.product_name, SUM(s.quantity) AS total_sold
FROM products p
JOIN sales s ON p.product_id = s.product_id
GROUP BY p.product_name
ORDER BY total_sold DESC;
```

### 3. Monthly Sales Summary
```sql
SELECT MONTH(sale_date) AS month, SUM(total_amount) AS total_sales
FROM sales
GROUP BY MONTH(sale_date)
ORDER BY month;
```

---

## 🎯 Objective
The purpose of this project is to:
- Build a normalized database for retail transactions.  
- Perform meaningful analysis using SQL queries.  
- Present real-time business insights through data retrieval and aggregation.  

---

## 🛠️ Tools Used
- **MySQL / SQL Workbench**  
- **GitHub** for version control   

---

## 📄 How to Use
1. Clone or download this repository.  
2. Open the `.sql` file in MySQL or your SQL IDE.  
3. Run the commands in order:
   - Create Database  
   - Create Tables  
   - Insert Values  
   - Execute Queries  

---

## 💡 Future Enhancements
- Add views and stored procedures.  
- Integrate data visualization dashboards using Power BI or Excel.  
- Automate reports for monthly summaries.  

---

## 👩‍💻 Author
**Shaik Kashida Jabeen**  
📧 Kashukash73@gmail.com  
🎓 Electronics and Communication Engineering  
💼 Aspiring Data Analyst / Process Assistant  
