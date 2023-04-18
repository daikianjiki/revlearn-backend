
-- Insert student data
INSERT INTO student (firstname, lastname, address, phone_number, dob, login_id) VALUES
  ('John', 'Doe', '123 Main St', 5551234, '1998-01-01', 1),
  ('Jane', 'Doe', '456 Elm St', 5555678, '1999-02-02', 2);

 -- Insert login data
 INSERT INTO login (email, password, user_type, status, login_id) VALUES
   ('john.doe@example.com', 'password', 'student', 'active', 1),
   ('jane.doe@example.com', 'password', 'student', 'active', 2);
   --(3, 'educator@example.com', 'password', 'educator', 'active');

-- Insert gradebook data
INSERT INTO gradebook (id, studentid, teacherid, grades) VALUES
  (1, 1, 3, 80),
  (2, 2, 3, 90);

-- Insert forum post data
INSERT INTO forum (post_id, course_id, user_id, text_body, created_at) VALUES
  (1, 1, 1, 'Hi everyone, I am excited to learn computer science!', '2023-04-13 15:30:00'),
  (2, 1, 2, 'I am struggling with the programming assignments, any tips?', '2023-04-14 10:15:00'),
  (3, 2, 1, 'I really enjoyed the data structures lectures, thanks!', '2023-04-15 11:00:00');

-- Insert course data
INSERT INTO courses (educator_id, name, keywords, category, course_level, description, cost) VALUES
  (3, 'Introduction to Computer Science', 'programming, computer science, basics', 'Computer Science', 101, 'Introduction to the major areas of computer science including operating systems, machine architecture, programming languages, data representation and storage, and algorithm development. Includes major emphasis in problem solving and simple programming concepts.', 2500.00),
  (3, 'Principles of Cybersecurity', 'cybersecurity, computer science', 'Computer Science', 121, 'An introduction to the basics of modern cybersecurity at the individual and organizational level.', 2500.00),
  (3, 'Algorithm Design and Implementation I', 'algorithm, programming, problem solving', 'Computer Science', 161, 'Basic concepts of computer programming, problem solving, algorithm development, and program coding using a high-level, block-structured language.', 2500),
  (3, 'Fundamentals of Information Technologies and Systems', 'information technology, computer technology, technology', 'Computer Science', 204,'Coverage of the fundamentals of information system and information technology concepts, strategies and skills.', 2500),
  (3, 'An Introduction to Applications of Database Management Systems', 'relational database, database, sql, mysql', 'Computer Science', 234, 'A course covering relational database basic structure, method of design, implementation and manipulation. Student will design and implement a major database project using a production version database management system.', 2500),
  (3, 'Software Engineering', 'design, implemetation, testing software development', 'Computer Science', 285, 'Introduction of the methods used for specifying,designing, implementing, and testing medium and large-scale software systems; methods for organizing and managing software development projects.', 2500),
  (3, 'Advanced Data Structures', 'data structures, algorithms, programming', 'Computer Science', 401, 'A course covering advanced data structures and algorithms in computer science.', 2500.00);
--INSERT INTO courses (educatorId, name, keywords, category, courseLevel, description, cost) VALUES
--(1, 'CSC 100 - Intro to Computer', 'computer systems, simple programming', 'Computer Science',100, 'Provides an insight into the problem-solving/software/social/ethical/legal issues that underlie computer systems; includes databases, spread sheets and simple programming.', 2500)
--(3, 'CSC 101 - Computer Science I', 'algorithm, programming', 'Computer Science',100, 'Problem-solving, algorithm development, computer programming, overview of computer science.', 2500)
--(4, 'CSC 203 - Introduction to Computer Systems','architecture, assembler language', 'Computer Science', 200, 'Computer systems and architecture, assembler language programming.', 2500)

