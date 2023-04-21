
-- Insert student data
INSERT INTO student (firstname, lastname, address, phone_number, dob, balance, login_id) VALUES
  ('John', 'Doe', '123 Main St', '123-456-7899', '01-01-1998', 0.0, 1),
  ('Jane', 'Doe', '456 Elm St', '345-123-3478', '02-02-1999', 0.0, 2);

 -- Insert login data
 INSERT INTO login (email, password, user_type, status, student_id) VALUES
   ('john.doe@example.com', 'password', 'student', 'active', 1),
   ('jane.doe@example.com', 'password', 'student', 'active', 2);
   --(3, 'educator@example.com', 'password', 'educator', 'active');

-- Insert gradebook data
INSERT INTO gradebook (student_id, teacher_id, grades) VALUES
  (1, 3, 80),
  (2, 3, 90),
  (1, 1, 85),
  (1, 1, 95),
  (1, 1, 90),
  (1, 1, 92),
  (1, 1, 88),
  (1, 1, 91),
  (1, 1, 87),
  (1, 1, 89),
  (1, 1, 86),
  (1, 1, 93),
  (2, 1, 82),
  (2, 1, 88),
  (2, 1, 94),
  (2, 1, 86),
  (2, 1, 91),
  (2, 1, 85),
  (2, 1, 89),
  (2, 1, 87),
  (2, 1, 90),
  (2, 1, 92),
  (1, 2, 85),
  (1, 2, 87),
  (1, 2, 90),
  (1, 2, 92),
  (1, 2, 88),
  (1, 2, 91),
  (1, 2, 87),
  (1, 2, 89),
  (1, 2, 86),
  (1, 2, 93),
  (2, 2, 82),
  (2, 2, 88),
  (2, 2, 94),
  (2, 2, 86),
  (2, 2, 91),
  (2, 2, 85),
  (2, 2, 89),
  (2, 2, 87),
  (2, 2, 90),
  (2, 2, 92);


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

INSERT INTO quiz (quiz_name, question, answer1, answer2, answer3, answer4, answer, course_id) VALUES
('Math Quiz', 'What is the value of pi (to two decimal places)?', '3.14', '3.12', '3.16', '3.18', 'A', '1'),
('Math Quiz', 'What is the square root of 81?', '9', '8', '7', '6', 'A','1'),
('Math Quiz', 'What is 2 + 2?', '4', '3', '5', '6', 'A', '1'),
('Math Quiz', 'What is the value of x in the equation 2x + 5 = 15?', '5', '10', '15', '20', 'B', '1'),
('Math Quiz', 'What is the area of a circle with a radius of 5?', '78.5', '39.25', '31.4', '25', 'A', '1'),
('Math Quiz', 'What is the slope of a horizontal line?', '0', '1', '-1', 'undefined', 'A', '1'),
('Math Quiz', 'What is the perimeter of a square with sides of length 6?', '24', '18', '36', '12', 'A', '1'),
('Math Quiz', 'What is the value of y in the equation 3y + 4 = 13?', '3', '2', '1', '4', 'C', '1'),
('Math Quiz', 'What is the Pythagorean Theorem?', 'a^2 + b^2 = c^2', 'e = mc^2', 'F = ma', 'Force = Distance x Time', 'A', '1'),
('Math Quiz', 'What is the value of 6! (factorial of 6)?', '720', '36', '120', '360', 'A', '1');

INSERT INTO quiz (quiz_name, question, answer1, answer2, answer3, answer4, answer, course_id) VALUES
('Algorithm Design Quiz 1', 'Which of the following is NOT a sorting algorithm?', 'A) Quicksort', 'B) Heapsort', 'C) Depth-First Search', 'D) Mergesort', 'C', '3'),
('Algorithm Design Quiz 1', 'Which of the following data structures uses LIFO (Last In First Out) principle?', 'A) Stack', 'B) Queue', 'C) Heap', 'D) Linked List', 'A', '3'),
('Algorithm Design Quiz 1', 'What is the worst case time complexity of the bubble sort algorithm?', 'A) O(1)', 'B) O(log n)', 'C) O(n)', 'D) O(n^2)', 'D', '3'),
('Algorithm Design Quiz 1', 'Which of the following is NOT an example of a divide and conquer algorithm?', 'A) Merge sort', 'B) Binary search', 'C) Quick sort', 'D) Bubble sort', 'D', '3'),
('Algorithm Design Quiz 1', 'What is the time complexity of the binary search algorithm?', 'A) O(1)', 'B) O(log n)', 'C) O(n)', 'D) O(n^2)', 'B', '3');

INSERT INTO quiz (quiz_name, question, answer1, answer2, answer3, answer4, answer, course_id) VALUES
('Algorithm Design Quiz 2', 'Which of the following is NOT a characteristic of a greedy algorithm?', 'A) It makes the locally optimal choice', 'B) It never reconsiders past decisions', 'C) It always produces the optimal solution', 'D) It may not always produce the globally optimal solution', 'C', '3'),
('Algorithm Design Quiz 2', 'Which of the following data structures uses the FIFO (First In First Out) principle?', 'A) Stack', 'B) Queue', 'C) Heap', 'D) Linked List', 'B', '3'),
('Algorithm Design Quiz 2', 'What is the worst case time complexity of the selection sort algorithm?', 'A) O(1)', 'B) O(log n)', 'C) O(n)', 'D) O(n^2)', 'D', '3'),
('Algorithm Design Quiz 2', 'What is the space complexity of the merge sort algorithm?', 'A) O(1)', 'B) O(log n)', 'C) O(n)', 'D) O(n log n)', 'D', '3'),
('Algorithm Design Quiz 2', 'Which of the following is NOT an example of a dynamic programming algorithm?', 'A) Knapsack problem', 'B) Longest common subsequence problem', 'C) Dijkstra algorithm', 'D) Fibonacci sequence', 'C', '3')