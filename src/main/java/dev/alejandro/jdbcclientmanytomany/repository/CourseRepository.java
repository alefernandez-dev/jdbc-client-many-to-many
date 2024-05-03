package dev.alejandro.jdbcclientmanytomany.repository;

import dev.alejandro.jdbcclientmanytomany.model.Course;
import dev.alejandro.jdbcclientmanytomany.model.Student;
import org.springframework.jdbc.core.simple.JdbcClient;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class CourseRepository {

    private final JdbcClient jdbcClient;

    private static final String LIST_COURSES_STUDENTS = """
            SELECT c.id AS course_id, c.name AS course_name, s.id AS student_id, s.name AS student_name
            FROM courses c
            INNER JOIN students_courses sc ON c.id = sc.course_id
            INNER JOIN students s ON sc.student_id = s.id;
            """;


    public CourseRepository(JdbcClient jdbcClient) {
        this.jdbcClient = jdbcClient;
    }

    public List<Course> listAll() {
        var courseDatabase = jdbcClient
                .sql(LIST_COURSES_STUDENTS)
                .query(new CourseResultExtractor());
        return courseDatabase.stream().map(c -> new Course(
                c.id,
                c.name,
                c.students.stream().map(s -> new Student(s.id, s.name)).toList()
        )).toList();
    }

}
