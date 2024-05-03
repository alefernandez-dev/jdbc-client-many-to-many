package dev.alejandro.jdbcclientmanytomany.model;

import java.util.List;

public record Course(Long id, String name, List<Student> students) {
}
