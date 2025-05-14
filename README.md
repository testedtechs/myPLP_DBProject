

# 🎓 Student Records Management System (MySQL)

## 📘 Description

This project implements a **relational database** for managing student records at a college or university using **MySQL**. It tracks student information, departments, instructors, courses, and student enrollments. The database design ensures **data integrity**, **consistency**, and models real-world relationships like:

- Students enrolling in multiple courses
- Instructors teaching courses
- Each student having one contact profile
- Departments managing multiple students and instructors

---

## 🛠️ How to Set Up and Run

1. **Install MySQL** (if not already installed).
2. Open your preferred MySQL interface (e.g., MySQL Workbench, phpMyAdmin, or command line).
3. Create a new database:
   ```sql
   CREATE DATABASE student_records;

    Use the new database:

USE student_records;

Import the SQL file included in this repo:

    mysql -u your_username -p student_records < student_records.sql

    Replace your_username with your actual MySQL username.

🧱 Database Structure

The SQL file includes the following:

    departments: Department information

    students: Student personal data

    student_contact: One-to-one contact details for each student

    instructors: Instructor profiles

    courses: Courses offered

    enrollments: Tracks which students are enrolled in which courses, along with grades

🔗 Entity Relationship Diagram (ERD)

    Note: Make sure to include a PNG or JPG of your ERD in the repo named erd.png, or link to it below:

📎 View ERD on dbdiagram.io

📁 Files in the Repository

student-records-database/
│
├── README.md              # This file
├── student_records.sql    # SQL file to create all tables
└── erd.png                # Optional ERD screenshot

📧 Contact

For questions or suggestions, please reach out to [Ogunbekun Imoleayo] at [ogunbekunimoleayo@gmail.com].
