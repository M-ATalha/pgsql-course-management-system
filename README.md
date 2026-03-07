# PostgreSQL Course Management System

A **PostgreSQL practice project** demonstrating database design, SQL queries, and advanced SQL concepts.  
This project is **fully normalized** and includes sample data, indexes, views, stored procedures, triggers, and window functions.

---

## 📂 Project Structure

| File | Description |
|------|-------------|
| `create_tables.sql` | Creates all normalized tables: Students, Instructors, Courses, Enrollments, Grades |
| `insert_data.sql` | Inserts sample data into all tables for testing |
| `basic-queries-&index.sql` | Sample queries including joins, filtering, and aggregation and indexes to optimize queries|
| `view.sql` | SQL views for common queries |
| `procedures.sql` | Stored procedures to automate tasks |
| `triggers.sql` | Triggers for data integrity and automation |
| `window_functions.sql` | Queries demonstrating window functions like ROW_NUMBER(), RANK(), AVG() OVER() |

---

## 🛠 Skills Practiced

- **Database Design**: Normalized tables with relationships  
- **SQL Queries**: SELECT, JOINs, WHERE, GROUP BY, HAVING  
- **Aggregations**: SUM, AVG, COUNT, MAX, MIN  
- **Window Functions**: ROW_NUMBER(), RANK(), DENSE_RANK(), AVG() OVER()  
- **Indexes**: Creating indexes for query optimization  
- **Views**: Simplify complex queries and reuse them  
- **Stored Procedures**: Automate repetitive tasks  
- **Triggers**: Maintain data integrity and automate events  

---

## 📝 Tables Overview

- **students**: Student information  
- **teacher**: teacher details  
- **Courses**: Course information  
- **enrollments**: Links students to courses  
- **grades**: Stores grades for each enrollment  

---

## 🚀 How to Use

1. Clone the repository:

```bash
git clone https://github.com/M-ATalha/pgsql-course-management-system.git

Opne postgres sql(pgadmin or pgslq) create data base cource-managment-system and run the bolow

-- 1. Create tables
\i create_tables.sql

-- 2. Insert sample data
\i insert_data.sql

-- 3. Create indexes
\i indexes.sql

-- 4. Run sample queries
\i queries.sql

-- 5. Create views
\i views.sql

-- 6. Create stored procedures
\i procedures.sql

-- 7. Create triggers
\i triggers.sql

-- 8. Explore window functions
\i window_functions.sql
