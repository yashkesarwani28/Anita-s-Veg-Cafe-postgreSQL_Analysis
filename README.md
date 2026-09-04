# Anita's Veg Café — PostgreSQL Business Analysis

## **📌 Project Overview**

An end-to-end **SQL & Business Intelligence case study** based on Anita's Veg Café, a small vegetarian café in Bengaluru.

The project uses PostgreSQL to analyze **customer spending, visit behavior, product preferences, loyalty-program performance, rewards, and potential customer churn**.

---

## **🎯 Business Objective**

The objective is to convert raw café transaction data into actionable business insights that can help Anita:

- Identify high-value customers
- Understand customer visit patterns
- Analyze popular and preferred menu items
- Evaluate loyalty-program performance
- Calculate customer reward points
- Identify customers at risk of churn
- Improve customer retention and marketing strategies

---

## **📊 Dataset & Database**

The project uses a relational PostgreSQL database named `anitas_veg_cafe` containing three main tables:

| Table | Purpose |
|---|---|
| `sales` | Customer orders and transactions |
| `menu` | Product names and prices |
| `members` | Loyalty membership information |

The tables are connected using `customer_id` and `product_id`.

---

## **🔍 Business Questions Analyzed**

The analysis answers **11 practical business questions** covering four major areas:

### **💰 Mission 01 — Customer Value & Spending**
- Total spending by each customer
- Number of distinct visit days

### **🍽️ Mission 02 — Menu Preferences**
- First dish ordered by each customer
- Most popular menu item
- Most frequently ordered dish by each customer

### **🎖️ Mission 03 — Loyalty Program Impact**
- First purchase after joining the loyalty program
- Last purchase before joining
- Pre-loyalty purchases and spending

### **⭐ Mission 04 — Rewards & Churn**
- Loyalty points earned by each customer
- First-week bonus points for Aarav and Meera
- Customers who have not ordered in the last 30 days

---

## **🛠️ SQL Concepts Used**

This project demonstrates practical PostgreSQL skills including:

- `JOIN`
- `GROUP BY`
- Aggregate Functions
- `CASE`
- Subqueries
- CTEs
- Window Functions
- Date & Time Functions
- `DISTINCT`
- Conditional Logic
- Customer Segmentation
- Loyalty & Reward Calculations

---

## **💡 Business Insights & Recommendations**

The analysis translates SQL results into business actions such as:

- Targeting high-value customers with VIP offers
- Promoting best-selling products
- Creating personalized product recommendations
- Evaluating customer behavior before and after loyalty membership
- Using reward points to encourage repeat purchases
- Re-engaging customers who may be at risk of churn

---

## **📂 Project Files**

- 📁 [Case Study](Case study)
- 📁 [Business Questions](Business Questions)
- 📁 [PostgreSQL SQL Analysis](PostgreSQL file/anita_sql_file.sql)
- 📁 [Analysis & Business Report](Analysis and Report file/Anita's Veg Cafe Report file.pdf)

---

## **📈 Key Takeaway**

This project demonstrates how **PostgreSQL can transform transactional data into meaningful business intelligence**.

By combining customer, product, sales, and loyalty data, the analysis provides insights that can support **customer retention, menu optimization, loyalty-program improvement, and revenue growth**.

---

## **👨‍💻 Prepared and Analysed by**

**Yash Kesarwani**
