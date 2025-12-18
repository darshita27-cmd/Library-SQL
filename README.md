# 📚 Library Management System (MySQL)

## 📌 Project Overview

This project is a **relational database-based Library Management System** implemented using **MySQL**. It models real-world library operations such as managing users, maintaining book inventory, tracking book circulation, and handling fines. The project demonstrates strong understanding of **database design, normalization, SQL queries, joins, views, and data manipulation**.

---

## 🧱 Database Schema

The system consists of the following core tables:

### 1. **USERS**

Stores information about registered library users.

* `USER_ID` (Primary Key)
* `USER_NAME`
* `ADDRESS`
* `CONTACT`

### 2. **BOOKS**

Maintains details of books available in the library.

* `BOOK_CODE` (Primary Key)
* `TITLE`
* `AUTHOR_NAME`
* `PUBLISHER`
* `ISBN`
* `NUMBER_OF_COPIES`
* `EDITION`

### 3. **CIRCULATION**

Tracks the issuing and returning of books.

* `USER_ID`
* `BOOK_CODE`
* `ISSUE_DATE`
* `DUE_DATE`
* `RETURN_DATE`

### 4. **FINES**

Stores fine details associated with users.

* `USER_ID`
* `BOOK_CODE`
* `AMOUNT`
* `REASON_OF_FINE`

---

## 🔗 Relationships

* A **user** can issue multiple books.
* A **book** can be issued multiple times.
* **CIRCULATION** acts as a junction table between USERS and BOOKS.
* **FINES** are associated with users based on late returns, damaged, or lost books.

---

## 👁️ View

### **USER_FINE View**

A database view created to provide a consolidated view of:

* User details
* Contact information
* Total fine amount per user
* Book issued
* Issue date

This view uses **JOINs and aggregation functions (SUM)** for reporting and analysis.

---

## ⚙️ Operations Implemented

* Database creation and deletion
* Table creation with constraints
* Bulk data insertion
* `UPDATE` queries for modifying records
* `DELETE` operations
* `ALTER TABLE` operations
* Complex `JOIN` queries
* View creation for analytical insights

---

## 🛠️ Technologies Used

* **MySQL**
* **SQL (DDL & DML)**

---

## 🚀 How to Run

1. Open MySQL Workbench or any MySQL-compatible client.
2. Execute the SQL script provided in the repository.
3. The database `library` will be created with all tables and populated data.
4. Run SELECT queries or views to explore the data.

---

## 🎯 Learning Outcomes

* Practical understanding of relational database design
* Hands-on experience with SQL joins and views
* Real-world data modeling for library systems
* Experience handling database updates and integrity

---

## 📌 Notes

* The project uses realistic sample data for users, books, and transactions.
* Designed for academic learning and demonstration purposes.

