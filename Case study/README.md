🍛 Case Study Summary

📌 Project Overview

Anita’s Veg Café is a business intelligence and SQL case study based on a small vegetarian café in Bengaluru. The café begins as a home-kitchen business founded by Anita, who serves simple, affordable, and homely vegetarian meals. As the café becomes popular among young professionals and college students, Anita realizes that intuition alone is not enough to understand customer behavior and make effective business decisions.

This project demonstrates how a café can use transactional data to identify its best customers, understand product preferences, evaluate the impact of a loyalty program, and improve future business strategies.

🏪 Business Context

The café focuses on three main menu items:

🍽️ Product
💰 Price
📝 Description
Paneer Butter Masala
₹180
A rich and popular dish considered the café’s best seller.
Veg Biryani
₹150
A generous, shareable meal commonly ordered by groups.
Masala Dosa
₹120
An all-day South Indian favorite served from breakfast through dinner.


Although the café has a small menu, each dish serves a specific customer need. Paneer Butter Masala attracts regular customers, Veg Biryani is suitable for sharing, and Masala Dosa provides consistent demand throughout the day.

🗄️ Dataset and Database Structure

The project uses a relational database named anitas_veg_cafe, which contains three connected tables:

📋 Table
🎯 Purpose
🔑 Important Columns
sales
Records every customer order.
customer_id, order_date, product_id
menu
Stores product names and prices.
product_id, product_name, price
loyal_customers
Identifies customers who joined the loyalty program.
customer_id, join_date




The sales table acts as the central transaction table. It connects to the menu table through product_id and to the loyal_customers table through customer_id. This structure allows customer activity, product information, order dates, prices, and loyalty membership to be analyzed together.

🔍 Analytical Objectives

The case study contains ten SQL problems divided into three main areas of investigation.

💰 1. Customer Spending and Visit Behavior

The first group of questions measures how customers interact with the café financially and how frequently they visit. The analysis calculates the total amount spent by each customer and the number of distinct days on which they placed orders. This helps identify high-value customers and distinguish between customers who visit regularly and those who place multiple orders on a single day.

🍽️ 2. Product Preferences

The second group focuses on menu performance and customer taste. It identifies the first product ordered by each customer, the most popular product overall, and the product most frequently ordered by each individual customer. These insights can help Anita understand which dishes attract new customers, which products generate the greatest demand, and whether different customers have distinct preferences.

🎖️ 3. Loyalty Program Impact

The third group evaluates customer behavior before and after joining the loyalty program. It determines the first dish ordered after joining, the last dish ordered before joining, the number of items purchased before membership, and the amount spent before becoming a loyalty member.

The project also calculates loyalty points using a defined reward system. Customers earn 10 points for every ₹1 spent, while Paneer Butter Masala earns double points. In addition, members receive double points on all items during their first loyalty week. This makes the final analysis a time-based loyalty calculation involving purchase dates, membership dates, product-specific rules, and bonus periods.


📈 Business Value

The results of this analysis can support several practical café decisions. Anita can identify high-spending customers, understand which menu items drive sales, recognize the products preferred by individual customers, and evaluate whether the loyalty program encourages repeat purchases.

The loyalty analysis is particularly valuable because it compares customer activity before and after membership. Instead of assuming that the loyalty program is successful, Anita can use actual order history to examine changes in spending, product selection, and purchase frequency. The points analysis also helps determine whether promotional rewards are likely to influence customer behavior.

🎓 Key Learning Outcomes

This project demonstrates that meaningful business intelligence does not always require a large or complex dataset. A small database containing customers, products, orders, and loyalty information can still answer important business questions when it is structured and analyzed correctly.

The case study provides practical experience in:

•
🗂️ Relational data modeling

•
🔗 SQL joins and table relationships

•
➕ Aggregation and grouping

•
🪟 Window functions

•
👥 Customer behavior analysis

•
🍛 Product and menu analysis

•
🎖️ Loyalty-program analytics

•
🧮 Conditional logic and reward calculations

•
📅 Date-based analysis

•
💡 Translating business questions into SQL queries

✅ Conclusion

Anita’s Veg Café transforms a simple restaurant scenario into a complete, end-to-end business intelligence investigation. Starting with a home-cooked food business, the case study develops into an analysis of customer spending, visit patterns, product popularity, individual preferences, loyalty behavior, and reward-point calculations.

Overall, the project highlights the importance of using data to support business decisions. Through three relational tables and ten focused analytical questions, it demonstrates how SQL can convert raw transaction records into useful insights for customer retention, menu planning, loyalty-program evaluation, and café growth.


🍛 Anita’s Veg Café: Where homely flavors meet data-driven insight.

