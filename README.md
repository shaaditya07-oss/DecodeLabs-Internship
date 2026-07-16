# data-cleaning-prep-p1
End-to-end data cleaning &amp; validation pipeline on e-commerce order data using Python and Pandas

# Data Cleaning & Prep — E-Commerce Orders Dataset

## Overview
Performed comprehensive data cleaning, validation, and exploratory prep 
on a 1,200-row e-commerce orders dataset (14 features) including order 
details, payment methods, referral sources, and coupon usage.

## Key Steps
- Handled missing values across categorical and numeric columns
- Detected and removed duplicate OrderIDs
- Standardized inconsistent text values (OrderStatus, PaymentMethod)
- Validated data integrity: verified TotalPrice against 
  Quantity × UnitPrice calculation
- Identified outliers in Quantity, UnitPrice, and TotalPrice
- Performed date range sanity checks and negative value detection

## Output
- `cleaned_orders.csv` — analysis-ready cleaned dataset
- `data_cleaning_notebook.ipynb` — full cleaning pipeline with 
  inline observations and findings

## Tech Stack
Python · Pandas · NumPy · Jupyter Notebook

## Key Finding
> Discovered X mismatched rows where TotalPrice did not align with 
> Quantity × UnitPrice — flagged for business review before analysis.

## Key Findings
- Zero negative values found in Quantity and UnitPrice — 
  no corrupt transaction records
- Zero price mismatches detected — TotalPrice consistently 
  aligns with Quantity × UnitPrice across all 1,200 rows
- Data validated as analysis-ready with no critical integrity issues
