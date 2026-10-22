# 🏦 Bank Database – MySQL Complete Series

![SQL](https://img.shields.io/badge/SQL-MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white)
![Status](https://img.shields.io/badge/Status-Completed-brightgreen?style=for-the-badge)
![Level](https://img.shields.io/badge/Level-Beginner%20to%20Intermediate-blue?style=for-the-badge)

> A complete step-by-step Bank Database project in MySQL covering table design, constraints, relationships, EER diagram, DML operations, and SELECT query practice.

---

### 📌 Project Overview
This repository contains a full **Bank Database** built from scratch using MySQL.  
It is organized into progressive labs that take you from basic table creation to advanced data querying.

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
- Table renaming and structure modification

**File:** `BankDatabase1.sql`

---

#### Lab 2 – Constraints
- Primary Key
- Foreign Key
- Unique & Not Null
- Check constraint (Minimum Balance ≥ 1000)

**File:** `BankDatabase2.sql`

---

#### Lab 3 – Relationships & EER Diagram
- Complete table relationships
- Foreign Keys between Accounts, Customers, Branches, Transactions, Loans
- EER Diagram designed in MySQL Workbench

**Files:** `BankDatabase3.sql` + `BankDatabase3.png`

---

#### Lab 4 – DML Operations
- Insert sample data into all tables
- Update customer and account records
- Delete transaction and account records

**File:** `BankDatabase4.sql`

---

#### Lab 5 – SELECT Queries & Filtering
- Basic `SELECT` with specific columns
- Filtering using `WHERE`
- Comparison operators (`>`, `<`, `>=`, `<=`)
- `BETWEEN`, `IN`, `OR`, `AND`, `NOT`
- `LIKE` pattern matching
- `LIMIT` and `OFFSET`
- Date-based filtering

**File:** `BankDatabase5.sql`

---

### 🛠️ Skills Demonstrated
- `CREATE DATABASE` & `CREATE TABLE`
- `ALTER TABLE`
- `PRIMARY KEY` / `FOREIGN KEY`
- `UNIQUE`, `NOT NULL`, `CHECK`
- `INSERT`, `UPDATE`, `DELETE`
- `SELECT` with filtering conditions
- `BETWEEN`, `IN`, `LIKE`, `LIMIT`, `OFFSET`
- EER Diagram design
- Relational database modeling

---

### 🚀 How to Run
1. Open **MySQL Workbench**
2. Run the scripts **in order**:
   - `BankDatabase1.sql`
   - `BankDatabase2.sql`
   - `BankDatabase3.sql`
   - `BankDatabase4.sql`
   - `BankDatabase5.sql`
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
