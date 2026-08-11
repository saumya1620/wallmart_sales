# Walmart Sales Data Analysis | SQL + Python

## 📌 Project Overview

This project is an end-to-end data analysis project based on Walmart sales data. The objective is to clean, transform, analyze, and extract meaningful business insights from transactional sales data using **Python and SQL**.

The project covers the complete data analysis workflow, including data extraction, data cleaning, exploratory data analysis, feature engineering, database integration, and SQL-based business analysis.

Through this project, I explored sales performance, product categories, branch performance, customer behavior, payment methods, and profitability to identify useful business insights.

---

## 🛠️ Tools & Technologies

* **Python** – Data cleaning, transformation, and analysis
* **Pandas** – Data manipulation and preprocessing
* **NumPy** – Numerical operations
* **MySQL** – Database management and SQL analysis
* **PostgreSQL** – Database management and SQL analysis
* **SQLAlchemy** – Database connectivity and data loading
* **Jupyter Notebook** – Exploratory data analysis
* **VS Code** – Development environment
* **Kaggle API** – Dataset acquisition
* **Git & GitHub** – Version control and project documentation

---

## 📊 Dataset

The project uses the **Walmart Sales Dataset** available on Kaggle.

**Dataset Source:** Kaggle – Walmart Sales Dataset

The dataset contains transactional sales information, including:

* Invoice details
* Branch and city
* Product category
* Unit price
* Quantity sold
* Date and time
* Payment method
* Customer rating
* Sales amount

---

## 🔄 Project Workflow

### 1. Data Acquisition

The Walmart sales dataset was downloaded from Kaggle using the Kaggle API and stored locally for further processing and analysis.

### 2. Data Exploration

The dataset was explored using Python and Pandas to understand its structure and identify potential data quality issues.

The analysis included:

* Checking dataset dimensions
* Inspecting column names
* Understanding data types
* Reviewing summary statistics
* Identifying missing values
* Checking duplicate records
* Understanding categorical and numerical variables

### 3. Data Cleaning

The dataset was cleaned and prepared for analysis by performing the following operations:

* Removed duplicate records
* Checked and handled missing values
* Corrected data types
* Standardized date and time columns
* Cleaned numerical values
* Validated the cleaned dataset

### 4. Feature Engineering

A new **Total Amount** column was created to calculate the total value of each transaction.

**Formula:**

```text
Total Amount = Unit Price × Quantity
```

This column was used for further revenue and sales analysis.

### 5. Database Integration

The cleaned dataset was loaded into **MySQL and PostgreSQL** using Python and SQLAlchemy.

The database integration allowed the data to be analyzed using SQL queries and helped in practicing real-world database workflows.

### 6. SQL Analysis

SQL queries were written to solve various business-related questions and identify patterns in the Walmart sales data.

---

## 🧮 Business Questions

The SQL analysis focused on answering questions such as:

### Sales Analysis

* What is the total revenue generated?
* Which branches generate the highest revenue?
* Which cities have the highest sales?
* What are the sales trends over time?
* What are the peak sales periods?

### Product Analysis

* Which product categories generate the highest revenue?
* Which categories have the highest quantity sold?
* Which products have the strongest sales performance?
* How does sales performance vary across different branches?

### Customer Analysis

* What are the average customer ratings?
* Which branches have the highest customer ratings?
* How do customer ratings vary across product categories?
* What are the most preferred payment methods?

### Profitability Analysis

* Which product categories are the most profitable?
* Which branches generate the highest profit?
* How does profit margin vary across different categories?
* Which locations show the strongest overall financial performance?

---

## 📈 Key Insights

The analysis helped identify important patterns in Walmart's sales data, including:

* High-performing branches and cities
* Top-performing product categories
* Revenue trends across different time periods
* Customer payment preferences
* Customer rating patterns
* Peak purchasing periods
* Differences in sales and profitability across branches and categories

Detailed findings and SQL queries are available in the project files.

---

## 📁 Project Structure

```text
Walmart-Sales-Analysis/
│
├── data/
│   |── walmart_sales.csv
│   └── walmart_clean_data.csv
│
├── notebooks/
│   └── project.ipynb
│
├── sql_queries/
│   └── business_questions.sql
│
├── requirements.txt
└── README.md
```

---

## ⚙️ Getting Started

### 1. Clone the Repository

```bash
git clone <your-repository-url>
cd Walmart-Sales-Analysis
```

### 2. Install Required Libraries

```bash
pip install -r requirements.txt
```

### 3. Download the Dataset

Download the Walmart Sales Dataset from Kaggle and place the CSV file inside the `data/` directory.

### 4. Configure the Database

Set up MySQL or PostgreSQL and update the database connection details in the Python script.

**Note:** Do not upload passwords, API keys, or other credentials to GitHub.

### 5. Run the Project

Run the Python script or Jupyter Notebook to clean and process the dataset.

After loading the data into the database, execute the SQL scripts from the `sql_queries/` folder to perform the analysis.

---

## 📦 Requirements

* Python 3.8+
* MySQL and/or PostgreSQL
* Pandas
* NumPy
* SQLAlchemy
* MySQL Connector
* Psycopg2
* Jupyter Notebook
* Kaggle API

---

## 🚀 Future Improvements

Some possible improvements for this project include:

* Building an interactive **Power BI dashboard**
* Adding automated data pipelines
* Performing customer segmentation
* Implementing sales forecasting
* Performing advanced statistical analysis
* Integrating additional datasets
* Automating the data extraction and analysis process

---

## 🎯 Skills Demonstrated

**Python | Pandas | NumPy | SQL | MySQL | PostgreSQL | Data Cleaning | Exploratory Data Analysis | Feature Engineering | Data Transformation | Database Integration | Business Analysis | Git & GitHub**

---

## 📚 Acknowledgments

* **Dataset:** Walmart Sales Dataset available on Kaggle
* This project was developed as part of my hands-on learning in **Data Analytics**, with a focus on applying Python and SQL to real-world sales data.

---

## 📄 License

This project is licensed under the MIT License.
