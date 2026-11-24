# IKEA Gifting – Customer Analytics & RFM Segmentation

An end-to-end customer analytics project using SQL, Python, and Power BI to understand customer value, purchasing behaviour, and retention opportunities through RFM analysis.

## Project Overview

This project focuses on analyzing customer purchasing patterns for a fictional UK-based gifting and home décor business, IKEA Gifting. Using transactional data, the analysis identifies valuable customer segments, evaluates customer inactivity, and uncovers opportunities to improve customer retention.

## Business Objective

To understand customer value and purchasing behaviour by:
- Identifying high-value and loyal customers.
- Detecting customers at risk of churn.
- Analyzing revenue contribution across customer segments.
- Understanding customer value trends over time.
- Developing targeted customer retention strategies.

## Dataset Source

**Online Retail II** – UCI Machine Learning Repository, donated by Daqing Chen.

A real, anonymized transactional dataset from a UK-based, non-store online retailer selling all-occasion giftware. It covers December 2009 to December 2011 and contains 1,067,371 raw transaction rows across two sheets.

**Licence:** [Creative Commons Attribution 4.0 International (CC BY 4.0)](https://creativecommons.org/licenses/by/4.0/)

## Tools & Technologies

| Tool | Purpose |
|---|---|
| SQL Server | Data cleaning, transformation, and exploration |
| Python (Pandas) | RFM calculation and customer segmentation |
| Jupyter Notebook | Python analysis |
| Power BI | Interactive dashboard and business insights |
| DAX | KPI calculations and measures |

## Project Workflow

1. **Data Preparation:** Imported, cleaned, and validated transactional data using SQL Server.
2. **Exploratory Analysis:** Examined customer transactions, revenue, and purchasing patterns.
3. **RFM Analysis:** Calculated Recency, Frequency, and Monetary values to evaluate customer behaviour.
4. **Customer Segmentation:** Classified customers into six segments based on RFM scores.
5. **Churn Analysis:** Identified inactive customers using a 90-day inactivity threshold.
6. **Dashboard Development:** Created an interactive Power BI report to communicate findings.

## Key Findings

- Champions account for approximately 22% of customers while contributing nearly 68% of total revenue.
- Overall customer churn is approximately 50.86%, based on a 90-day inactivity threshold.
- Customer value varies significantly across different segments.
- Revenue demonstrates seasonal peaks during the fourth quarter.

## Power BI Dashboard

The Power BI report provides an interactive view of customer value, revenue performance, and retention patterns.

**Page 1 – Home**
- Project introduction and dashboard navigation.
- Definitions of Recency, Frequency, Monetary, and Churn.

**Page 2 – Business Overview**
- Total customers, revenue, churn percentage, and average customer value.
- Revenue and customer distribution across segments.
- Monthly, quarterly, and yearly trends.
- Interactive filters for date, country, segment, and churn status.

**Page 3 – RFM Analysis**
- Customer and revenue distribution by segment.
- Average RFM scores across customer groups.
- Average customer value by segment.
- Customer churn trends over time.

## Repository Structure

```text
IKEA-Gifting-RFM-Analysis/
│
├── README.md
├── IKEA_Gifting_RFM_Analysis.sql
├── IKEA_Gifting_RFM_Analysis.ipynb
├── IKEA_Gifting_RFM_Dashboard.pbix
│
└── Screenshots/
    ├── Home_Page.png
    ├── Business_Overview.png
    └── RFM_Analysis.png
```

## Conclusion

This project demonstrates how SQL, Python, and Power BI can be combined to transform raw transactional data into meaningful customer insights. The RFM segmentation and churn analysis help identify valuable customers and support more focused customer retention strategies.

---

**Author:** Neerjhara Barhate
