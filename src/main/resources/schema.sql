
CREATE TABLE login (
  login_id INTEGER PRIMARY KEY,
  email VARCHAR,
  password VARCHAR,
  user_type VARCHAR,
  status VARCHAR
);

-- Table for student information
CREATE TABLE student (
  student_id INTEGER PRIMARY KEY,
  login_id INTEGER REFERENCES login(login_id),
  firstname VARCHAR,
  lastname VARCHAR,
  address VARCHAR,
  phone_number INTEGER,
  date_of_birth DATE
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
  id INTEGER PRIMARY KEY,
  studentid INTEGER REFERENCES student(student_id),
  teacherid INTEGER,
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
CREATE TABLE quizzes (
  question_id INTEGER PRIMARY KEY AUTO_INCREMENT,
  quiz_name VARCHAR(100) NOT NULL,
  question VARCHAR(255) NOT NULL,
  answer_1 VARCHAR(255) NOT NULL,
  answer_2 VARCHAR(255) NOT NULL,
  answer_3 VARCHAR(255) NOT NULL,
  answer_4 VARCHAR(255) NOT NULL,
  correct_answer CHAR(1) NOT NULL
);