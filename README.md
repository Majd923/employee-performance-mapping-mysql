# Employee Performance Mapping using MySQL

## 📊 Project Overview
This project focuses on building an Employee Performance Mapping system using MySQL for a data science startup (ScienceQtech). The goal is to analyze employee performance, salary structure, project assignments, and role alignment using structured SQL queries and database design principles.

The project demonstrates practical SQL skills including data analysis, joins, subqueries, window functions, stored procedures, views, indexing, and performance optimization.

---

## 🏢 Business Scenario
ScienceQtech is a data science startup working on various domains such as fraud detection, supply chain optimization, and healthcare analytics. With the annual performance review cycle approaching, the HR department requires detailed insights into employee performance, salary distribution, and role classification.

As a database administrator, the objective is to:
- Analyze employee performance ratings
- Evaluate salary distribution and bonuses
- Validate job roles based on experience
- Optimize database queries for performance
- Provide HR-ready insights for decision-making

---

## 📂 Dataset Description

### 1. Employee Record Table (`emp_record_table`)
Contains employee-level information:
- Employee ID
- Name (First & Last)
- Gender
- Role
- Department
- Experience (years)
- Country & Continent
- Salary
- Performance Rating
- Manager ID
- Project ID

---

### 2. Project Table (`project_table`)
Contains project-related information:
- Project ID
- Project Name
- Domain
- Start Date
- Closure Date
- Development Quarter
- Project Status

---

### 3. Data Science Team Table (`data_science_team`)
Contains employees specifically from the data science team:
- Employee ID
- Name
- Gender
- Role
- Department
- Experience
- Country
- Continent

---

## 🛠️ Technologies Used
- MySQL
- SQL (Structured Query Language)

---

## 📌 Key SQL Concepts Used
- Database and Table Creation
- SELECT Queries with Filters
- Joins and Self Joins
- Subqueries
- UNION Operations
- Aggregate Functions (MAX, MIN, AVG)
- Window Functions (RANK)
- Stored Functions
- Views
- Indexing for Performance Optimization

---

## 📈 Key Analysis Performed

### Employee Filtering

### Role Validation
- Employees categorized based on experience:
- Junior Data Scientist
- Associate Data Scientist
- Senior Data Scientist
- Lead Data Scientist
- Manager

### Department Analysis
- Salary distribution across departments
- Max and min salaries per role

### Organizational Insights
- Employees with reporting hierarchy
- Country and continent-based salary trends

---

## ⚙️ Advanced Features

### 📊 Window Functions
Used to rank employees based on experience.

### 🧠 Stored Function
Custom function to validate employee roles based on experience.

### 📄 Views
Created views for high-salary employees by country.

### 🚀 Indexing
Optimized search queries for faster employee lookup by first name.

---

## 📁 Project Structure
- Employees grouped by performance rating:
  - Low performers (rating < 2)
  - Average performers (rating 2–4)
  - High performers (rating > 4)

### Salary & Bonus Analysis
- Bonus calculated based on: Bonus = 5% of Salary × Employee Rating


### Role Validation
- Employees categorized based on experience:
- Junior Data Scientist
- Associate Data Scientist
- Senior Data Scientist
- Lead Data Scientist
- Manager

### Department Analysis
- Salary distribution across departments
- Max and min salaries per role

### Organizational Insights
- Employees with reporting hierarchy
- Country and continent-based salary trends

---

## ⚙️ Advanced Features

### 📊 Window Functions
Used to rank employees based on experience.

### 🧠 Stored Function
Custom function to validate employee roles based on experience.

### 📄 Views
Created views for high-salary employees by country.

### 🚀 Indexing
Optimized search queries for faster employee lookup by first name.

---


## 📌 Key Insights
- Employee performance varies significantly across departments.
- Salary distribution is influenced by geography and role.
- Role mismatches were identified using experience-based validation.
- Query optimization improved lookup performance.

---

## 👨‍💻 Author
**Majd Tannous**

This project was developed as part of SQL learning and portfolio development for Data Analyst / Database roles.

---

## ⭐ Note
This project demonstrates practical SQL skills applied to a real-world HR analytics scenario.
