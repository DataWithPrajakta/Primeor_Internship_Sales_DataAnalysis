# E-Commerce Data Analytics | Primeor Solutions Internship Project

End-to-end analysis of a global e-commerce (superstore) dataset using **Excel, SQL and Power BI**, completed during my Data Analytics Internship at **Primeor Solutions**.

---

## 1. Project Overview

- **Company:** Primeor Solutions (data analytics and consulting)
- **Role:** Data Analytics Intern
- **Goal:** Clean raw order data, analyze sales and profit performance, and present findings in an interactive dashboard to support business decisions.
- **Structure:** 3 levels: Data Cleaning (Excel), Data Analysis (SQL), Dashboard (Power BI)

---

## 2. Dataset

- **Records:** 51,271 order lines (about 25,000 unique orders)
- **Period:** January 2011 to December 2014
- **Coverage:** 147 countries, 7 markets (APAC, EU, US, LATAM, EMEA, Africa, Canada)
- **Fields (21):** order_id, order_date, ship_date, ship_mode, customer_name, segment, state, country, market, region, product_id, category, sub_category, product_name, sales, quantity, discount, profit, shipping_cost, order_priority, year

---

## 3. Tools Used

| Tool | Purpose |
|------|---------|
| **Excel** | Data cleaning, basic analysis, pivot tables and charts |
| **SQL** | Business queries and aggregations |
| **Power BI** | 3-page interactive dashboard |

---

## 4. Project Workflow

### Level 1: Data Understanding and Cleaning (Excel)
- Checked and removed duplicate records
- Handled missing values (79 missing customer names, 14 missing profit values)
- Standardized inconsistent text (IDs, market names, casing)
- Fixed incorrect date formats
- Corrected invalid numerical values and removed extra spaces
- **Basic analysis:** Total Sales, Total Profit, Average Discount, Top 5 Products, Top 5 Loss-Making Products, Region-wise Sales
- **Pivot tables and charts:** Sales by Region, Profit by Category, Segment-wise Sales, Monthly Sales Trend

### Level 2: Data Analysis (SQL)
- Imported the cleaned dataset into SQL
- Queries written for: top 10 profitable products, top 10 customers, region-wise sales, category-wise average profit, highest discount category, negative-profit orders, monthly sales trend, market-wise revenue, top sub-categories, ship mode usage

### Level 3: Power BI Dashboard
- **Page 1, Executive Overview:** Total Sales, Total Profit, Total Orders, Average Discount
- **Page 2, Sales Analysis:** Sales by Region, Sales by Market, Monthly Sales Trend, Category Performance
- **Page 3, Product and Customer Insights:** Top Products, Top Customers, Profit by Sub-Category, Segment Analysis
- **Features:** slicers and filters, interactive visuals, KPI cards, consistent color theme

---

## 5. Key Business Insights

### Headline Numbers
| Metric | Value |
|--------|-------|
| **Total Sales** | $12.64M |
| **Total Profit** | $1.47M (about 11.6% margin) |
| **Total Orders** | 25,029 |
| **Average Discount** | 14.3% |

### Findings
1. **APAC is the top market** with $3.58M sales (28% of total), followed by EU ($2.94M) and US ($2.30M).
2. **Central region leads** with $2.82M sales and $312K profit.
3. **Technology is the most profitable category** ($663K profit). Furniture has high sales ($4.11M) but only $286K profit and the highest average discount (16.8%).
4. **Office Supplies has the lowest average profit per line** (about $17), though total profit is solid because of volume.
5. **Tables lose money** (about -$64K profit despite $756K sales), likely driven by heavy discounts.
6. **Top products by sales** are smart phones (Apple, Cisco, Motorola, Nokia). The biggest loss-maker is the Cubify Cubex 3D Printer (Double Head) at about -$8.9K.
7. **Consumer segment** contributes about 51% of sales ($6.50M).
8. **Standard Class is the most used ship mode** (30,764 lines, about 60%).
9. **Steady growth:** sales grew every year, from $2.26M in 2011 to $4.29M in 2014 (about 90% growth).
10. About **12,500 order lines** have negative profit, mostly linked to high discounts.

---

## 7. Dashboard Preview



---

## 9. Skills Demonstrated

Data cleaning, exploratory analysis, pivot tables, SQL aggregation, KPI design, dashboard storytelling, business insight writing.

---
