-- Creación de la tabla de cursos
CREATE TABLE IF NOT EXISTS courses (
    id INT PRIMARY KEY,
    name VARCHAR(50)
);

-- Creación de la tabla de estudiantes
CREATE TABLE IF NOT EXISTS students (
    id INT PRIMARY KEY,
    name VARCHAR(50)
);

-- Tabla intermedia para relacionar estudiantes y cursos
CREATE TABLE IF NOT EXISTS students_courses (
    student_id INT,
    course_id INT,
    FOREIGN KEY (student_id) REFERENCES students(id),
    FOREIGN KEY (course_id) REFERENCES courses(id),
    PRIMARY KEY (student_id, course_id)
);

-- Inserción de 5 cursos de muestra
INSERT INTO courses (id, name) VALUES (1, 'Mathematics');
INSERT INTO courses (id, name) VALUES (2, 'History');
INSERT INTO courses (id, name) VALUES (3, 'Biology');
INSERT INTO courses (id, name) VALUES (4, 'Chemistry');
INSERT INTO courses (id, name) VALUES (5, 'Physics');

-- Inserción de 20 estudiantes de muestra
INSERT INTO students (id, name) VALUES (1, 'John');
INSERT INTO students (id, name) VALUES (2, 'Mary');
INSERT INTO students (id, name) VALUES (3, 'David');
INSERT INTO students (id, name) VALUES (4, 'Emma');
INSERT INTO students (id, name) VALUES (5, 'Michael');
INSERT INTO students (id, name) VALUES (6, 'Sophia');
INSERT INTO students (id, name) VALUES (7, 'Daniel');
INSERT INTO students (id, name) VALUES (8, 'Olivia');
INSERT INTO students (id, name) VALUES (9, 'James');
INSERT INTO students (id, name) VALUES (10, 'Emily');
INSERT INTO students (id, name) VALUES (11, 'Alexander');
INSERT INTO students (id, name) VALUES (12, 'Charlotte');
INSERT INTO students (id, name) VALUES (13, 'William');
INSERT INTO students (id, name) VALUES (14, 'Ava');
INSERT INTO students (id, name) VALUES (15, 'Benjamin');
INSERT INTO students (id, name) VALUES (16, 'Mia');
INSERT INTO students (id, name) VALUES (17, 'Henry');
INSERT INTO students (id, name) VALUES (18, 'Ella');
INSERT INTO students (id, name) VALUES (19, 'Jacob');
INSERT INTO students (id, name) VALUES (20, 'Sofia');

-- Asignación de estudiantes a cursos
-- Aquí se asignarán aleatoriamente estudiantes a cursos.
-- Puedes ajustar esta lógica según tus necesidades.

-- Course 1: Mathematics
INSERT INTO students_courses (student_id, course_id) VALUES (1, 1); -- John
INSERT INTO students_courses (student_id, course_id) VALUES (2, 1); -- Mary
INSERT INTO students_courses (student_id, course_id) VALUES (3, 1); -- David
INSERT INTO students_courses (student_id, course_id) VALUES (4, 1); -- Emma
INSERT INTO students_courses (student_id, course_id) VALUES (5, 1); -- Michael

-- Course 2: History
INSERT INTO students_courses (student_id, course_id) VALUES (6, 2); -- Sophia
INSERT INTO students_courses (student_id, course_id) VALUES (7, 2); -- Daniel
INSERT INTO students_courses (student_id, course_id) VALUES (8, 2); -- Olivia
INSERT INTO students_courses (student_id, course_id) VALUES (9, 2); -- James
INSERT INTO students_courses (student_id, course_id) VALUES (10, 2); -- Emily

-- Course 3: Biology
INSERT INTO students_courses (student_id, course_id) VALUES (11, 3); -- Alexander
INSERT INTO students_courses (student_id, course_id) VALUES (12, 3); -- Charlotte
INSERT INTO students_courses (student_id, course_id) VALUES (13, 3); -- William
INSERT INTO students_courses (student_id, course_id) VALUES (14, 3); -- Ava
INSERT INTO students_courses (student_id, course_id) VALUES (15, 3); -- Benjamin

-- Course 4: Chemistry
INSERT INTO students_courses (student_id, course_id) VALUES (16, 4); -- Mia
INSERT INTO students_courses (student_id, course_id) VALUES (17, 4); -- Henry
INSERT INTO students_courses (student_id, course_id) VALUES (18, 4); -- Ella
INSERT INTO students_courses (student_id, course_id) VALUES (19, 4); -- Jacob
INSERT INTO students_courses (student_id, course_id) VALUES (20, 4); -- Sofia
