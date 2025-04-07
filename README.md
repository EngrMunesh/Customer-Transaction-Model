# 💳 Customer Transaction Data Modeling Project

This project demonstrates a simplified relational data model for a retail banking system. It includes database schema design, sample data insertion, and SQL queries for extracting insights from customer transactions. The project is implemented using PostgreSQL and is ideal for practicing data modeling, SQL scripting, and analytics in a structured, real-world use case.

---

## 📌 Objective

To design a normalized database system that can efficiently manage and analyze:
- Customer information
- Account types and balances
- Transaction history
- Branch-level activity

---

## 🛠️ Technologies Used

- **Database:** PostgreSQL
- **Modeling Tools:** ER Diagrams (draw.io / dbdiagram.io)
- **Querying & Scripting:** SQL (DDL + DML)
- **Environment:** pgAdmin 4, Visual Studio Code (with PostgreSQL extension)

---

## 🧱 Database Schema Overview

**Tables:**
- `Customers`: Stores customer details  
- `Accounts`: Tracks account types and balances  
- `Transactions`: Records credit/debit transactions  
- `Branches`: Represents bank branch locations

Relationships:
- One customer can have multiple accounts  
- Each account belongs to one customer and one branch  
- Each account can have multiple transactions

An ER diagram (`ER_diagram.png`) is included to visualize these relationships.

---

## 📂 Project Structure

```
Customer-Transaction-Model/
│
├── schema.sql                # SQL DDL to create all tables
├── insert_sample_data.sql    # Sample data inserts
├── queries.sql               # Common analytical queries
├── ER_diagram.png            # Visual entity-relationship diagram
└── README.md                 # Project documentation
```

---

## 🧪 Sample Queries Included

- 🔢 **Total transactions per branch**  
- 👤 **Active customers with balance > X**  
- 📊 **Monthly transaction summary per customer**

These can be found in `queries.sql` and tested directly in pgAdmin or VS Code.

---

## 🚀 How to Use

1. Open **pgAdmin 4** or connect via **VS Code**  
2. Create a new PostgreSQL database: `customer_transactions`  
3. Run `schema.sql` to create tables  
4. Run `insert_sample_data.sql` to populate with sample data  
5. Run queries from `queries.sql` to analyze data

---

## ✅ Learning Outcomes

- Build end-to-end conceptual, logical, and physical models  
- Practice SQL DDL and DML  
- Understand data relationships and normalization  
- Perform transactional data analytics with real-world context

---

## 👨‍💻 Author

**Munesh Meghwar**  
📫 mk.meghwar97@gmail.com  
🌍 [GitHub – EngrMunesh](https://github.com/EngrMunesh)  
🔗 [LinkedIn – Munesh Meghwar](https://linkedin.com/in/munesh-meghwar-0408a1154)

---

## 📄 License

This project is released under the [MIT License](https://opensource.org/licenses/MIT).
