
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
  courseId INTEGER PRIMARY KEY,
  educatorId INTEGER,
  name VARCHAR,
  keywords VARCHAR,
  category VARCHAR,
  courseLevel INTEGER,
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
  post_id INTEGER PRIMARY KEY,
  course_id INTEGER ,
  user_id INTEGER ,
  text_body LONGTEXT,
  created_at TIMESTAMP
);