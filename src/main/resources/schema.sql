
-- Table for student information
CREATE TABLE student (
  id INTEGER PRIMARY KEY AUTO_INCREMENT,
  firstname VARCHAR,
  lastname VARCHAR,
  address VARCHAR,
  phone_number VARCHAR,
  dob VARCHAR,
  login_id INTEGER
);

CREATE TABLE login (
  id INTEGER PRIMARY KEY AUTO_INCREMENT,
  email VARCHAR,
  password VARCHAR,
  user_type VARCHAR,
  status VARCHAR,
  login_id INTEGER REFERENCES student(id)
);

-- Table for courses
CREATE TABLE courses (
  course_id INTEGER PRIMARY KEY AUTO_INCREMENT,
  educator_id INTEGER,
  name VARCHAR,
  keywords VARCHAR,
  category VARCHAR,
  course_level INTEGER,
  description LONGTEXT,
  cost DOUBLE
);

-- Table for gradebook
CREATE TABLE gradebook (
  grade_id INTEGER PRIMARY KEY AUTO_INCREMENT,
  student_id INTEGER,
  teacher_id INTEGER,
  grades INTEGER
);

-- Table for forum posts
CREATE TABLE forum (
  post_id INTEGER PRIMARY KEY AUTO_INCREMENT,
  course_id INTEGER ,
  user_id INTEGER ,
  text_body LONGTEXT,
  created_at TIMESTAMP
);

CREATE TABLE quiz (
  quiz_id INTEGER PRIMARY KEY AUTO_INCREMENT,
  quiz_name VARCHAR(100) NOT NULL,
  question VARCHAR(255) NOT NULL,
  answer1 VARCHAR(255) NOT NULL,
  answer2 VARCHAR(255) NOT NULL,
  answer3 VARCHAR(255) NOT NULL,
  answer4 VARCHAR(255) NOT NULL,
  answer CHAR(1) NOT NULL,
  course_id INTEGER NOT NULL

);