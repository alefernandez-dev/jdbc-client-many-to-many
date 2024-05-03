package dev.alejandro.jdbcclientmanytomany.repository;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.ResultSetExtractor;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CourseResultExtractor implements ResultSetExtractor<List<CourseDatabase>> {

    @Override
    public List<CourseDatabase> extractData(ResultSet rs) throws SQLException, DataAccessException {
        List<CourseDatabase> courseDatabaseList = new ArrayList<>();
        CourseDatabase courseDatabase = null;
        while (rs.next()) {
            long courseId = rs.getLong("course_id");
            String courseName = rs.getString("course_name");
            long studentId = rs.getLong("student_id");
            String studentName = rs.getString("student_name");

            if (courseDatabase == null || courseDatabase.id != courseId) {
                courseDatabase = new CourseDatabase();
                courseDatabase.id = courseId;
                courseDatabase.name = courseName;
                courseDatabase.students = new ArrayList<>();
                courseDatabaseList.add(courseDatabase);
            }

            StudentDatabase studentDatabase = new StudentDatabase();
            studentDatabase.id = studentId;
            studentDatabase.name = studentName;
            courseDatabase.students.add(studentDatabase);
        }

        return courseDatabaseList;
    }
}
