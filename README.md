# 🛒 E-Commerce Analytics Dashboard  

🎥 Video Walkthrough

<p align="left">
  <a href="https://youtu.be/sVGa6yifCdM">
    <img src="https://img.youtube.com/vi/sVGa6yifCdM/maxresdefault.jpg" width="250">
  </a>
</p>

## 📑 Insights PDF Report
[📄 PDF](https://github.com/khaled-gohar/E-Commerce-Analytics-Dashboard-PostgreSQL-Power-BI/blob/main/Report/E-commerce%20Store%20Insights%20Report.pdf)




---

## 📌 Business Problem & Project Scenario  

The business team requested a dashboard solution to:  
- Provide insights into **sales, customers, and products**.  
- Answer **key business questions** through SQL analysis.  
- Present findings in an **interactive Power BI dashboard** to support decision-making on sales growth, customer retention, and product performance.  

This project simulates a **real-world business environment**, where raw e-commerce data is transformed, modeled, and visualized for strategic use.  

---

## 📋 Business Questions Addressed  

✔️ Retrieve the total sales for each product category.  
✔️ Identify customers who made purchases in the last month.  
✔️ Calculate the average order value.  
✔️ Track monthly & weekly sales trends.  
✔️ Measure customer retention & churn.  
✔️ Identify top-selling products & categories.  
✔️ Segment customers using **RFM analysis**.  

---

## ⚙️ Tools & Technologies  

**Data Sources**  
- `Categories.csv`, `Customers.csv`, `Geolocation.csv`, `Order Items.csv`,  
- `Order Payments.csv`, `Orders.csv`, `Products.csv`, `Reviews.csv`,  
- `Segment.csv`, `Sellers.csv`, `StatesName.csv`.  

**Tech Stack**  
- **Database & Data Modeling:** PostgreSQL (Views, Materialized Views)  
- **Data Exploration:** DBeaver  
- **Data Visualization:** Power BI  
- **UI/UX Wireframing:** Figma  
- **Documentation & Reporting:** PDF  

---

## 🗄️ Data Model  

The dataset was originally provided as multiple raw CSVs.  
To optimize for analytics, the data was remodeled into a **Star Schema** using SQL Views & Materialized Views.  

### 🔹 Fact Table  
- **Fact_Sales** → Stores all transactional data (sales amount, quantity, order details).  

### 🔹 Dimension Tables  
- **Dim_Customers** → Customer details (demographics, location).  
- **Dim_Sellers** → Seller information.  
- **Dim_Product** → Product attributes (category, subcategory, price).  
- **Dim_Payment** → Payment details (method, installments, amounts).  
- **Review** → Aggregated table with average review score per order.  

### 🔹 Extra Tables for Advanced Analysis  
- **RFM Table** → Customer segmentation (Recency, Frequency, Monetary) created in Power BI with DAX.  
- **Order_Bridge_Table** → Resolves many-to-many relationships between orders and other entities.  
- **Calendar Table** → Custom Date table for advanced time intelligence (MoM, YoY, rolling averages).  

✅ Schema benefits:  
- Efficient querying and scalability.  
- Cleaner relationships for BI reporting.  
- Support for advanced analytics (RFM, retention, churn).  

---

## 📂 Data Workflow  

### 1️⃣ Data Cleaning & Transformation  
- Joined and cleaned raw data in **PostgreSQL**.  
- Created **Materialized Views** for fact tables.  
- Created **Normal Views** for dimension tables.  
- Added **Calendar Table** for time intelligence.  

### 2️⃣ Data Modeling  
- Star Schema design (Fact & Dim views).  
- Bridge table for complex relationships.  
- RFM segmentation table for customer insights.  

### 3️⃣ Visualization in Power BI  
- Built a **3-page interactive dashboard** with KPIs, trends, comparisons, and filter panels.  

---

## 📊 Dashboard Overview  

### 📄 Page 1: **Summary Page**  
**KPIs:**  
- Total Sales, Total Customers, Total Orders, Total Products  
- Includes Growth % & Difference  

**Interactive Controls:**  
- MoM vs YoY slicer  
- Input field for custom periods (Months/Years)  
- Dynamic KPI selector  

**Visuals:**  
- Line Chart with Moving Avg & subtitle insights  
- Column Chart (Top/Bottom 5 States with Avg line)  
- Bar Chart (Top/Bottom 5 Categories with % share)  
- Filter Panel & Nav Bar with slicer counter, refresh date, and developer credit  

---

### 👥 Page 2: **Customers Page**  
**KPIs:**  
- Total Customers, Returning Customers, Retention Rate %, Churn Rate %, New Customers  

**Visuals:**  
- Line Chart (Retention Trend with Avg line + subtitle)  
- Line Chart (Churn Rate Trend with Avg line + subtitle)  

**Controls:**  
- Switch between Month/Quarter/Year views  

---

### 📦 Page 3: **Products Page**  
**KPIs:**  
- Total Products, Total Sales, Avg Products per Order, Avg Sales per Order  

**Visuals:**  
- Butterfly Chart (Sales vs Orders by Category with dynamic input)  
- Heatmap Table (Category × States → Sales Distribution with Top N input)  
- Subtitles highlight top categories by sales and orders  

---

## 📈 Example Insights  

- **Sales Trends:** Seasonal peaks identified; `X%` growth in last `Y months`.  
- **Customer Retention:** Retention rate improved in `Z months` above average.  
- **Churn Analysis:** High-churn periods linked to lower marketing spend.  
- **Product Insights:** Category A leads in sales, while Category B drives the most orders.  

---

## 🎯 Key Skills Demonstrated  

- **SQL:** Data Cleaning, Joins, Views, Materialized Views  
- **Power BI:** Visualization, Storytelling, Dynamic KPIs  
- **Data Modeling:** Star Schema + Calendar + RFM  
- **Customer Analytics:** Retention, Churn, RFM segmentation  
- **Dashboard UX/UI:** Filter Panel, Nav Bar, Dynamic Controls  
- **Business Acumen:** Translating raw data into actionable insights  

---

## 🚀 Deliverables  

- ✅ Interactive Power BI Dashboard (**[Live Link](#)**)  
- ✅ SQL Scripts (for modeling & business questions)  
- ✅ Insights Report (PDF)  
- ✅ Video Demo (Coming Soon)  

---

## 👤 Author  

**Khaled Gohar**  
Data Analyst | SQL | Power BI | Customer Analytics  

🔗 [LinkedIn](#) | [Portfolio](#) | [GitHub](#)  

---
