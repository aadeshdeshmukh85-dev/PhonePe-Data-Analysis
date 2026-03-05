# 📊 PhonePe Transaction Data Analysis Project

## 🚀 Project Overview

This is an end-to-end Data Analyst project based on transaction and user data inspired by the PhonePe digital payments ecosystem.

The objective of this project is to analyze transaction trends, user growth patterns, and regional performance using Python, MySQL, and Power BI.

This project demonstrates practical skills in:
- Data Cleaning
- Exploratory Data Analysis (EDA)
- SQL Analytics
- Dashboard Development
- Business Insight Generation

---

## 🛠 Tools & Technologies Used

- Python (Pandas, NumPy, Matplotlib)
- MySQL
- Power BI
- DAX
- Git & GitHub

---

## 📂 Dataset Description

The dataset includes:

- Aggregated Transactions
- Aggregated Users
- Map-based Transactions
- Map-based Users
- Top District-wise Transactions

Data Fields Include:
- State
- Year
- Quarter
- Transaction Type
- Transaction Count
- Transaction Amount
- Registered Users
- App Opens

---

## 🎯 Business Problems Solved

1. Identify top-performing states based on transaction volume.
2. Analyze quarterly transaction growth trends.
3. Determine most popular transaction types.
4. Compare district-wise performance.
5. Analyze user growth and app engagement patterns.
6. Measure year-over-year transaction growth.

---

## 📊 Dashboard Features

### 🔹 Overview Page
- Total Transaction Amount
- Total Transaction Count
- Total Registered Users
- Average Transaction Value
- Quarterly Trend Analysis

### 🔹 State Analysis Page
- State-wise Transaction Comparison
- Top 10 States
- Interactive Filters (Year & Quarter)

### 🔹 User Growth Page
- Registered Users Growth
- App Opens Analysis
- Year-over-Year Growth %

---

## 📈 Key Insights

- Maharashtra and Karnataka contribute significantly to total transaction volume.
- Q4 shows peak transaction activity due to festive season impact.
- Peer-to-peer transactions dominate overall transaction share.
- Southern states show higher digital adoption rates.
- Significant year-over-year growth in both transactions and registered users.

---

## 🧠 SQL Sample Queries

```sql
-- Top 5 States by Transaction Amount
SELECT state, SUM(transaction_amount) AS total_amount
FROM agg_trans
GROUP BY state
ORDER BY total_amount DESC
LIMIT 5;
