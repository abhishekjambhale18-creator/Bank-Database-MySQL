# 🏦 Bank Database – MySQL Complete Series

![SQL](https://img.shields.io/badge/SQL-MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white)
![Status](https://img.shields.io/badge/Status-Completed-brightgreen?style=for-the-badge)
![Level](https://img.shields.io/badge/Level-Beginner%20to%20Advanced-blue?style=for-the-badge)

> A complete step-by-step Bank Database project in MySQL covering table design, constraints, relationships, DML, SELECT queries, SQL functions, aggregates, GROUP BY, HAVING, and window functions.

---

### 📌 Project Overview
This repository contains a full **Bank Database** built from scratch using MySQL.  
It is organized into progressive labs from basic table creation to advanced analytical queries using window functions.

---

### 🗂️ Database Tables

| Table          | Description                          |
|----------------|--------------------------------------|
| `Customers`    | Customer personal information        |
| `Accounts`     | Account details linked to customers  |
| `Transactions` | Deposit / Withdraw records           |
| `Branches`     | Bank branch information              |
| `Loans`        | Loan details linked to customers     |

---

### 📚 Labs Included

#### Lab 1 – Database Setup
- Create database and tables
- Basic DDL operations

**File:** `BankDatabase1.sql`

---

#### Lab 2 – Constraints
- Primary Key, Foreign Key
- Unique, Not Null, Check constraints

**File:** `BankDatabase2.sql`

---

#### Lab 3 – Relationships & EER Diagram
- Complete table relationships
- EER Diagram in MySQL Workbench

**Files:** `BankDatabase3.sql` + `BankDatabase3.png`

---

#### Lab 4 – DML Operations
- INSERT, UPDATE, DELETE
- Sample data population

**File:** `BankDatabase4.sql`

---

#### Lab 5 – SELECT Queries & Filtering
- WHERE conditions
- BETWEEN, IN, AND, OR

**File:** `BankDatabase5.sql`

---

#### Lab 6 – Advanced SELECT
- ORDER BY, DISTINCT, LIMIT, OFFSET
- LIKE, REGEXP, IS NULL
- CASE statements

**File:** `BankDatabase6.sql`

---

#### Lab 7 – SQL Functions, Aggregates & GROUP BY
- String functions (`UPPER`, `LOWER`, `CONCAT`, `LEFT`, `RIGHT`, `TRIM`)
- Math functions (`ROUND`, `CEIL`, `FLOOR`, `ABS`, `MOD`)
- Date functions (`CURRENT_DATE`, `NOW`, `YEAR`, `MONTH`, `DATEDIFF`)
- Aggregate functions (`SUM`, `AVG`, `MAX`, `MIN`, `COUNT`)
- `GROUP BY` and `HAVING`

**File:** `BankDatabase7.sql`

---

#### Lab 8 – Window Functions
- `ROW_NUMBER()`
- `RANK()` and `DENSE_RANK()`
- `LAG()` and `LEAD()`
- `PARTITION BY`
- Running totals using `SUM() OVER()`

**File:** `BankDatabase8.sql`

---

### 🛠️ Skills Demonstrated
- Database & table design
- Constraints & relationships
- DML operations
- Filtering, sorting & pattern matching
- String, math & date functions
- Aggregate functions
- `GROUP BY` & `HAVING`
- Window functions (`ROW_NUMBER`, `RANK`, `LAG`, `LEAD`)
- EER Diagram design

---

### 🚀 How to Run
1. Open **MySQL Workbench**
2. Run the scripts **in order** (Lab 1 → Lab 8)
3. View the EER Diagram (`BankDatabase3.png`)

---

### 🧰 Tools Used
- MySQL
- MySQL Workbench

---

### 👨‍💻 Author
**Abhishek Jambhale**  
MCA Student | Aspiring Data Analyst & Data Scientist  
📍 Pune, Maharashtra

---

⭐ Star this repository if you find it useful!
