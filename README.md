# 🛒 Zepto Inventory Analysis – Power BI & SQL Project  

## 📌 Project Overview  
This project focuses on analyzing **Zepto’s inventory data** to gain insights into **sales performance, stock availability, discount strategies, and category-wise performance**.  
The dashboard was built using **Power BI** for visualization and **SQL** for querying and transforming raw data.  

---

## 🎯 Business Problem  
Zepto needs a centralized reporting system to answer key business questions such as:  
- Which product categories contribute the most to sales?  
- How is the inventory distributed across categories and items?  
- What impact do discounts have on sales?  
- Which items are frequently out of stock?  

---

## 📊 Key Metrics (KPIs)  
1. **Average Discount %** – Measures average discounts applied.  
2. **Max Sale by Category** – Identifies the highest-selling category.  
3. **Available Quantity** – Current stock availability.  
4. **Total Quantity** – Total items recorded.  
5. **Total Sales** – Overall revenue generated.  

---

## 📈 Dashboard Visuals  
The Power BI dashboard includes the following:  

- **Donut Chart** – Quantity by product name.  
- **Bar Chart** – Net price by category.  
- **Line Chart** – Total sales by category.  
- **Bar Chart** – Quantity by category.  
- **Combo Chart** – Total sales vs quantity by category.  
- **Donut Chart** – Discount % by category.
- 
---

## 🛠️ Tools & Technologies  
- **SQL** – Data extraction, cleaning, and transformations.  
- **Power BI Desktop** – Visualization and dashboard development.  
- **Power Query** – ETL (Extract, Transform, Load) operations.  
- **Excel/CSV** – Source dataset storage.  

---

## ⚙️ Project Workflow  
1. **Data Extraction** – Querying raw inventory data using SQL.  
2. **Data Cleaning** – Handling null values, outliers, and standardizing fields.  
3. **Data Modeling** – Building relationships between product, category, and sales tables.  
4. **KPI Creation** – SQL + DAX measures for total sales, quantities, discounts.  
5. **Visualization** – Designing interactive Power BI dashboards.  
6. **Deployment** – Publishing report to Power BI Service.  

---
Zepto-Inventory-Analysis/

│── Data/                     # SQL scripts & raw dataset
│── PowerBI_Dashboard.pbix    # Power BI dashboard file
│── Screenshots/              # Dashboard images
│── README.md                 # Project documentation
