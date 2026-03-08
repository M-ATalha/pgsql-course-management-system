# PostgreSQL Course Management System

A **PostgreSQL practice project** that demonstrates database design and advanced SQL concepts.
The project simulates a **Course Management System** where students enroll in courses taught by teachers and receive grades.

The database is **fully normalized** and includes sample data along with advanced SQL features such as **joins, aggregations, indexes, views, procedures, triggers, and window functions**.

---

# 📂 Project Structure

| File                      | Description                                                                     |
| ------------------------- | ------------------------------------------------------------------------------- |
| `create_tables.sql`       | Creates all normalized tables: Students, Teachers, Courses, Enrollments, Grades |
| `insert_data.sql`         | Inserts sample data for testing the database                                    |
| `.sql`             | Creates indexes to improve query performance                                    |
| `joins.sql`               | Practice queries using INNER JOIN, LEFT JOIN and multiple table joins           |
| `aggregation_groupby.sql` | Queries using aggregation functions and GROUP BY                                |
| `basic_queries-&-indexes.sql`| General SQL queries for filtering and retrieving data and indexes to improve query performance  |
| `views.sql`               | Creates SQL views for reusable queries                                          |
| `procedures.sql`          | Stored procedures for automating tasks                                          |
| `triggers.sql`            | Triggers to enforce business rules and automate actions                         |
| `window_functions.sql`    | Queries demonstrating window functions like ROW_NUMBER(), RANK(), AVG() OVER()  |
| `README.md`               | Project documentation                                                           |

---

# 🗂 Database Tables

The system consists of **five normalized tables**:

* **students** → Stores student information
* **teacher** → Stores teacher details
* **courses** → Contains course information
* **enrollments** → Connects students to courses
* **grades** → Stores marks and grades for each enrollment

---

# 🛠 Skills Practiced

This project demonstrates the following **SQL and database skills**:

* Database normalization
* Table relationships and foreign keys
* SQL joins (INNER JOIN, LEFT JOIN)
* Filtering with WHERE clause
* Aggregations (SUM, AVG, COUNT, MAX, MIN)
* GROUP BY and HAVING
* Window functions
* Index creation for query optimization
* Views for reusable queries
* Stored procedures
* Triggers for automated database actions

---

# 🚀 How to Run the Project

### 1️⃣ Clone the repository

```bash
git clone https://github.com/M-ATalha/pgsql-course-management-system.git
```

### 2️⃣ Open PostgreSQL and run the SQL files in this order

```sql
-- 1. Create tables
\i create_tables.sql

-- 2. Insert sample data
\i insert_data.sql

-- 3. General queries and indexes
\i basic-queries-&-index.sql

-- 4. Practice joins
\i joins.sql

-- 5. Aggregation and group by queries
\i aggregation_groupby.sql


-- 6. Create views
\i views.sql

-- 7. Create stored procedures
\i procedures.sql

-- 8. Create triggers
\i triggers.sql

-- 9. Practice window functions
\i window_functions.sql
```

---

# 📈 Why This Project Is Useful

This project helps practice **real-world SQL concepts used in database development and data engineering**, including:

* Designing normalized relational databases
* Writing complex SQL queries
* Optimizing queries using indexes
* Automating database operations with triggers and procedures
* Performing analytical queries using window functions

---

# 👨‍💻 Author

**Muhammad Abu Talha**
Aspiring Data Engineer | PostgreSQL | SQL | Python | Data pipelines

LInked In:
www.linkedin.com/in/engr-m-a-talha-002953261
