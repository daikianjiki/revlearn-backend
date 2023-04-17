
-- Insert login data
INSERT INTO login (login_id, email, password, user_type, status) VALUES
  (1, 'john.doe@example.com', 'password', 'student', 'active'),
  (2, 'jane.doe@example.com', 'password', 'student', 'active'),
  (3, 'educator@example.com', 'password', 'educator', 'active');

-- Insert student data
INSERT INTO student (student_id, login_id, firstname, lastname, address, phone_number, date_of_birth) VALUES
  (1, 1, 'John', 'Doe', '123 Main St', 5551234, '1998-01-01'),
  (2, 2, 'Jane', 'Doe', '456 Elm St', 5555678, '1999-02-02');


-- Insert gradebook data
INSERT INTO gradebook (id, studentid, teacherid, grades) VALUES
  (1, 1, 3, 80),
  (2, 2, 3, 90);

-- Insert forum post data
INSERT INTO forum (course_id, user_id, text_body, created_at) VALUES
  (1, 1, 'Hi everyone, I am excited to learn computer science!', '2023-04-13 15:30:00'),
  (1, 2, 'I am struggling with the programming assignments, any tips?', '2023-04-14 10:15:00'),
  (2, 1, 'I really enjoyed the data structures lectures, thanks!', '2023-04-15 11:00:00'),
  (1, 3, 'Has anyone found a good study group for this course?', '2023-04-16 14:20:00'),
  (1, 4, 'I found the programming assignments easier after breaking them down into smaller steps.', '2023-04-17 09:45:00'),
  (1, 2, 'I also struggled with the programming assignments at first, but found the office hours really helpful.', '2023-04-18 16:30:00'),
  (1, 5, 'I am having trouble with the midterm review, any tips?', '2023-04-19 08:00:00'),
  (1, 1, 'Has anyone tried the extra practice problems? Are they worth doing?', '2023-04-20 12:00:00'),
  (1, 4, 'I am finding the lectures really confusing, is anyone else feeling the same way?', '2023-04-21 10:30:00'),
  (1, 3, 'I found the sample code really helpful for the programming assignments.', '2023-04-22 11:45:00'),
  (1, 2, 'I am having trouble with time management, any tips?', '2023-04-23 09:00:00'),
  (1, 5, 'I am really enjoying the guest lectures, they are so interesting!', '2023-04-24 14:15:00'),
  (1, 3, 'I am feeling overwhelmed by the amount of material we need to know for the final, any advice?', '2023-04-25 11:30:00'),
  (1, 1, 'I found the TA office hours really helpful for the programming assignments.', '2023-04-26 16:00:00'),
  (1, 4, 'I am finding the textbook really confusing, any recommendations for alternative resources?', '2023-04-27 08:45:00'),
  (1, 2, 'I am really impressed by the organization of the course material, it makes studying much easier!', '2023-04-28 13:30:00'),
  (1, 5, 'I am struggling with the final project, any tips?', '2023-04-29 10:15:00'),
  (1, 1, 'I found the quizzes really helpful for testing my understanding of the material.', '2023-04-30 12:30:00'),
  (1, 4, 'I am really struggling to keep up with the lectures and assignments, any advice?', '2023-05-01 09:00:00'),
  (1, 3, 'I am finding the course material really challenging, but also very rewarding!', '2023-05-02 14:00:00');

-- Insert course data
INSERT INTO courses (educator_id, name, keywords, category, course_level, description, cost) VALUES
  ( 3, 'Introduction to Computer Science', 'programming, computer science, basics', 'Computer Science', 101, 'An introduction to the basics of computer science and programming.', 29.99),
  (3, 'Advanced Data Structures', 'data structures, algorithms, programming', 'Computer Science', 401, 'A course covering advanced data structures and algorithms in computer science.', 49.99);
--INSERT INTO courses (educatorId, name, keywords, category, courseLevel, description, cost) VALUES
--(1, 'CSC 100 - Intro to Computer', 'computer systems, simple programming', 'Computer Science',100, 'Provides an insight into the problem-solving/software/social/ethical/legal issues that underlie computer systems; includes databases, spread sheets and simple programming.', 2500)
--(3, 'CSC 101 - Computer Science I', 'algorithm, programming', 'Computer Science',100, 'Problem-solving, algorithm development, computer programming, overview of computer science.', 2500)
--(4, 'CSC 203 - Introduction to Computer Systems','architecture, assembler language', 'Computer Science', 200, 'Computer systems and architecture, assembler language programming.', 2500)

