# IKEA Gifting: Customer Analytics and RFM Segmentation

## 📌Project Overview

This project focuses on analyzing IKEA sales data to understand customer purchasing behavior, sales performance, customer segmentation, and customer churn.

The project follows an end-to-end data analytics workflow, starting with data importing and cleaning in SQL Server Management Studio (SSMS), followed by customer analysis using Python and Pandas, and finally creating an interactive Power BI dashboard.

The main objective is to extract meaningful business insights and help understand customer value, purchasing patterns, and customer retention.

## 🎯 Project Objectives

- Import and clean raw IKEA sales data.
- Remove duplicate records and handle data quality issues.
- Perform customer-level RFM analysis.
- Calculate Recency, Frequency, and Monetary values.
- Assign customer scores and create customer segments.
- Identify potentially churned customers.
- Build an interactive Power BI dashboard.
- Present important business KPIs and customer insights.

## 🛠️ Tools & Technologies

| Tool | Purpose |
|---|---|
| SQL Server Management Studio (SSMS) | Data importing, cleaning, and duplicate removal |
| Python | Data analysis and customer segmentation |
| Pandas | Data manipulation and transformation |
| Jupyter Notebook | Interactive Python development |
| Power BI Desktop | Interactive dashboard development |
| DAX | KPI calculations and business measures |

## 🔄 Project Workflow

### 1. Data Importing & Cleaning – SQL Server (SSMS)

- Imported raw IKEA sales data into SQL Server.
- Examined the dataset structure and data quality.
- Identified and removed duplicate records.
- Performed data cleaning and validation.
- Prepared the cleaned dataset for further analysis.

### 2. Data Analysis – Python & Pandas

Used Python and Pandas to perform customer-level analysis.

**Key activities:**
- Loaded and explored the cleaned dataset.
- Processed transaction and customer information.
- Calculated Recency, Frequency, and Monetary values.
- Applied RFM scoring logic.
- Created customer segments based on RFM scores.
- Identified potentially churned customers using churn flagging logic.

### 3. RFM Analysis

RFM analysis helps understand customer purchasing behavior using three important metrics:

- **Recency:** How recently a customer made a purchase.
- **Frequency:** How often a customer made purchases.
- **Monetary:** How much money a customer spent.

Based on these metrics, customers were scored and grouped into different segments to understand their value and purchasing behavior.

### 4. Customer Segmentation & Churn Analysis

- Calculated RFM scores for each customer.
- Applied segmentation logic to classify customers.
- Identified high-value and low-engagement customer groups.
- Created churn flags to identify potentially inactive customers.

### 5. Power BI Dashboard Development

Developed a three-page interactive Power BI dashboard.

**Dashboard Pages:**

1. **Executive Summary**
   - Overall sales performance.
   - Total revenue.
   - Customer count.
   - Average customer value.
   - Key business KPIs.

2. **Customer Analysis**
   - Customer purchasing behavior.
   - Customer value analysis.
   - Customer distribution and performance.

3. **RFM Deep Dive**
   - RFM customer segments.
   - Customer scoring analysis.
   - Recency, Frequency, and Monetary insights.
   - Customer churn analysis.

### 6. DAX Measures

Created DAX measures to calculate important business KPIs, including:

- Total Customers
- Total Revenue
- Average Customer Value

## 📊 Key Deliverables

- Cleaned and validated sales dataset.
- SQL data cleaning scripts.
- Python-based RFM analysis.
- Customer scoring and segmentation.
- Customer churn identification.
- Three-page interactive Power BI dashboard.
- Business KPI calculations using DAX.

## 📁 Repository Structure

```text
IKEA-Sales-Customer-Analytics/
│
├── SQL/
│   └── Data_Cleaning.sql
│
├── Python/
│   └── RFM_Analysis.ipynb
│
├── PowerBI/
│   └── IKEA_Dashboard.pbix
│
├── Screenshots/
│   ├── Executive_Summary.png
│   ├── Customer_Analysis.png
│   └── RFM_Analysis.png
│
├── Dataset/
│   └── README.md
│
└── README.md
```

## 💡 Business Value

This project demonstrates how raw sales data can be transformed into meaningful business insights through SQL, Python, and Power BI.

It helps businesses understand customer purchasing patterns, identify valuable customer groups, monitor customer inactivity, and make data-driven decisions to improve customer retention.

## 👨‍💻 Skills Demonstrated

SQL | Data Cleaning | Python | Pandas | Jupyter Notebook | RFM Analysis | Customer Segmentation | Churn Analysis | Power BI | DAX | Data Visualization

---

**Project:** IKEA Sales & Customer Analytics  
**Domain:** Retail & Customer Analytics  
**Tools:** SSMS, Python, Pandas, Jupyter Notebook, Power BI, DAX
