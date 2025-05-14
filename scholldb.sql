-- =====================================
-- STUDENT RECORDS MANAGEMENT DATABASE
-- =====================================

-- 1. Departments Table
CREATE TABLE departments (
    department_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL UNIQUE
);

-- 2. Students Table
CREATE TABLE students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    enrollment_year YEAR NOT NULL,
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

-- 3. Student Contact Info (1-to-1 with students)
CREATE TABLE student_contact (
    student_id INT PRIMARY KEY,
    phone VARCHAR(15),
    address TEXT,
    FOREIGN KEY (student_id) REFERENCES students(student_id)
        ON DELETE CASCADE
);

-- 4. Instructors Table
CREATE TABLE instructors (
    instructor_id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    department_id INT NOT NULL,
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

-- 5. Courses Table
CREATE TABLE courses (
    course_id INT AUTO_INCREMENT PRIMARY KEY,
    course_code VARCHAR(10) NOT NULL UNIQUE,
    course_name VARCHAR(100) NOT NULL,
    credit_hours INT NOT NULL CHECK (credit_hours BETWEEN 1 AND 6),
    instructor_id INT,
    department_id INT NOT NULL,
    FOREIGN KEY (instructor_id) REFERENCES instructors(instructor_id),
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

-- 6. Enrollments Table (Many-to-Many: Students <-> Courses)
CREATE TABLE enrollments (
    enrollment_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT NOT NULL,
    course_id INT NOT NULL,
    grade CHAR(2),
    semester VARCHAR(10) NOT NULL,
    year YEAR NOT NULL,
    UNIQUE (student_id, course_id, semester, year),
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);
