# Data Cleaning & Prep — E-Commerce Orders Dataset

## Overview
Performed comprehensive data cleaning, validation, and exploratory prep on a 1,200-row e-commerce orders dataset (14 features) including order details, payment methods, referral sources, and coupon usage.

## Key Steps
* Handled missing values across categorical and numeric columns
* Detected and removed duplicate OrderIDs
* Standardized inconsistent text values (OrderStatus, PaymentMethod)
* Validated data integrity: verified TotalPrice against Quantity × UnitPrice calculation
* Identified outliers in Quantity, UnitPrice, and TotalPrice
* Performed date range sanity checks and negative value detection

## Output
* `cleaned_orders.csv` — analysis-ready cleaned dataset
* `data_cleaning_notebook.ipynb` — full cleaning pipeline with inline observations and findings

## Tech Stack
Python · Pandas · NumPy · Jupyter Notebook

## Key Findings
* Zero negative values found in Quantity and UnitPrice — no corrupt transaction records
* Zero price mismatches detected — TotalPrice consistently aligns with Quantity × UnitPrice across all 1,200 rows
* Data validated as analysis-ready with no critical integrity issues

---

# Exploratory Data Analysis — E-Commerce Orders Dataset

## Overview
Performed exploratory data analysis on the cleaned e-commerce orders dataset to uncover patterns in order value, pricing, and order status before moving to deeper analysis.

## Key Steps
* Visualized distributions of Quantity, UnitPrice, and TotalPrice
* Detected and analyzed outliers across all three numeric features
* Cross-referenced outlier records against OrderStatus to identify behavioral patterns
* Used Matplotlib and Seaborn for univariate and comparative visualizations

## Output
* `eda_notebook.ipynb` — full EDA workflow with visualizations and inline observations

## Tech Stack
Python · Pandas · Matplotlib · Seaborn · Jupyter Notebook

## Key Finding
Outliers in Quantity, UnitPrice, and TotalPrice were most concentrated in orders with Returned status — suggesting a potential link between high-value/bulk orders and return likelihood, worth investigating further in downstream analysis.rows
- Data validated as analysis-ready with no critical integrity issues
