create database rms_node;
use rms_node;

-- Table structure for table result
DROP TABLE IF EXISTS result;
CREATE TABLE IF NOT EXISTS result (
  id INT NOT NULL,
  semester VARCHAR(225) NOT NULL,
  cgpa DECIMAL(3,2) NOT NULL CHECK (cgpa <= 5), 
  CONSTRAINT fk_student_id FOREIGN KEY (id) REFERENCES student(id)
) ;


--  table result

INSERT INTO result (id, semester, cgpa) VALUES
(109, 1, 8.5),
(210, 2, 8.7),
(233, 1, 8.3),
(431, 3, 9.0),
(345, 2, 8.8);


-- Table structure for table student

DROP TABLE IF EXISTS student;
CREATE TABLE IF NOT EXISTS student (
  id INT NOT NULL PRIMARY KEY,
  name VARCHAR(45) NOT NULL,
  batch VARCHAR(45) NOT NULL,
  gender ENUM('Male', 'Female', 'Others') NOT NULL,
  department VARCHAR(225) NOT NULL,
  phone VARCHAR(10) NOT NULL CHECK (LENGTH(phone) = 10 AND phone REGEXP '^[0-9]+$'), 
  email VARCHAR(45) NOT NULL,
  status VARCHAR(10) NOT NULL DEFAULT 'active',
  CONSTRAINT chk_name_no_digits CHECK (name REGEXP '^[^0-9]+$') 
) ;


--  table student
INSERT INTO student (id, name, batch, gender, department, phone, email, status) VALUES
(109, 'Rahul Sharma', '2022', 'Male', 'Computer Science', '9876543210', 'rahul.sharma@example.com', 'active'),
(210, 'Priya Patel', '2023', 'Female', 'Electrical Engineering', '9876543211', 'priya.patel@example.com', 'active'),
(233, 'Amit Singh', '2022', 'Male', 'Mechanical Engineering', '9876543212', 'amit.singh@example.com', 'active'),
(431, 'Sneha Gupta', '2024', 'Female', 'Civil Engineering', '9876543213', 'sneha.gupta@example.com', 'active'),
(345, 'Neha Verma', '2023', 'Female', 'Chemical Engineering', '9876543214', 'neha.verma@example.com', 'active');

