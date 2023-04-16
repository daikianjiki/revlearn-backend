-- Insert login data
INSERT INTO login (login_id, email, password, user_type, status) VALUES
  (1, 'john.doe@example.com', 'password', 'student', 'active'),
  (2, 'jane.doe@example.com', 'password', 'student', 'active'),
  (3, 'educator@example.com', 'password', 'educator', 'active');

-- Insert student data
INSERT INTO student (student_id, login_id, firstname, lastname, address, phone_number, date_of_birth) VALUES
  (1, 1, 'John', 'Doe', '123 Main St', 5551234, '1998-01-01'),
  (2, 2, 'Jane', 'Doe', '456 Elm St', 5555678, '1999-02-02');

-- Insert course data
INSERT INTO courses (course_id, educator_id, name, keywords, category, course_level, description, cost) VALUES
  (1, 3, 'Introduction to Computer Science', 'programming, computer science, basics', 'Computer Science', 101, 'An introduction to the basics of computer science and programming.', 29.99),
  (2, 3, 'Advanced Data Structures', 'data structures, algorithms, programming', 'Computer Science', 401, 'A course covering advanced data structures and algorithms in computer science.', 49.99);

-- Insert gradebook data
INSERT INTO gradebook (id, studentid, teacherid, grades) VALUES
  (1, 1, 3, 80),
  (2, 2, 3, 90);

-- Insert forum post data
INSERT INTO forum (post_id, course_id, user_id, text_body, created_at) VALUES
  (1, 1, 1, 'Hi everyone, I am excited to learn computer science!', '2023-04-13 15:30:00'),
  (2, 1, 2, 'I am struggling with the programming assignments, any tips?', '2023-04-14 10:15:00'),
  (3, 2, 1, 'I really enjoyed the data structures lectures, thanks!', '2023-04-15 11:00:00');
