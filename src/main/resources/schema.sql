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
