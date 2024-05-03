package dev.alejandro.jdbcclientmanytomany.repository;

import java.util.List;

public class CourseDatabase {
    Long id;
    String name;
    List<StudentDatabase> students;
}
