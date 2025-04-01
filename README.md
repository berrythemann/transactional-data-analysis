# **Transactional Data Analysis: Customer Insights & Revenue Trends**

## **1. Overview**  
This project analyzes **10+ million financial transactions** to uncover **customer behavior, revenue trends, and business insights** using **SQL** and **Python (Pandas, Matplotlib, Seaborn)**.

---

## **2. Table of Contents**
- [Introduction](#introduction)  
- [Dataset Overview](#dataset-overview)  
- [Project Objectives](#project-objectives)  
- [Technologies Used](#technologies-used)  
- [Key Insights](#key-insights)  
- [How to Use](#how-to-use)  
- [SQL Queries](#sql-queries)  
- [Conclusions](#conclusions)  

---

## **3. Introduction**  
This project extracts insights from large-scale financial transactions, including:  
- **Peak transaction periods**  
- **Customer purchasing trends**  
- **Top-selling products**  
- **Payment method analysis & fraud detection**  
- **Geographical sales distribution**

---

## **4. Dataset Overview**  
The dataset contains over **10 million transactions**, with attributes like `transaction_id`, `customer_id`, `transaction_date`, `amount`, `payment_method`, `category`, and `region`.  
- **Data Cleaning**: Duplicate removal, standardized date formats, and missing value imputation.

---

## **5. Project Objectives**  
- **Customer Segmentation**: Identify top spenders  
- **Sales Analysis**: Track revenue over time  
- **Fraud Detection**: Identify high-risk transactions  
- **Regional Insights**: Sales trends across locations

---

## **6. Technologies Used**  
- **SQL** (PostgreSQL, MySQL) for querying  
- **Python** (Pandas, NumPy) for data analysis  
- **Matplotlib & Seaborn** for visualization  
- **Jupyter Notebook** for interactive analysis

---

## **7. Key Insights**  
- **Peak Transactions**: Highest between **12 PM – 3 PM**  
- **Top Customers**: Top 5% generate over 40% of revenue  
- **Payment Trends**: Mobile payments have the highest success rate  
- **Geographical**: **North-East** region is highest in revenue  
- **Categories**: **Electronics** lead in performance

---

## **8. How to Use**  
- **Prerequisites**: Install libraries:  
```bash
pip install pandas numpy matplotlib seaborn sqlalchemy jupyter
```
- **Clone the Repo**:  
```bash
git clone https://github.com/berrythemann/transactional-data-analysis.git
```
- **Run the Analysis**:  
  - SQL: Run `transaction_analysis.sql`  
  - Python: Open `transaction_analysis.ipynb` in Jupyter

---

## **9. SQL Queries**  
- **Total Transactions & Revenue**:  
```sql
SELECT DATE(transaction_date), COUNT(*), SUM(amount)
FROM transactions GROUP BY txn_day ORDER BY txn_day;
```
- **Top Customers**:  
```sql
SELECT customer_id, COUNT(*), SUM(amount) FROM transactions
GROUP BY customer_id ORDER BY total_spent DESC LIMIT 10;
```
- **Fraud Detection**:  
```sql
SELECT * FROM transactions WHERE amount > (SELECT AVG(amount) + 3 * STDDEV(amount) FROM transactions);
```

---

## **10. Conclusions**  
- **Market during peak periods (12 PM – 3 PM)**  
- **Target top 5% of customers with loyalty programs**  
- **Enhance fraud detection for high-value credit card transactions**  
- **Expand mobile payment options due to higher success rates**

---

## **11. Author**  
📌 **Abdulmaleek Oladipo**  
🔗 [Portfolio](https://berrythemann.github.io) | [GitHub](https://github.com/berrythemann) | [LinkedIn](https://www.linkedin.com/in/abdulmaleekoladipo)
