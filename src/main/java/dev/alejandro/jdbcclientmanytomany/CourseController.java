package dev.alejandro.jdbcclientmanytomany;

import dev.alejandro.jdbcclientmanytomany.repository.CourseRepository;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/course")
public class CourseController {

    private final CourseRepository repository;

    public CourseController(CourseRepository repository) {
        this.repository = repository;
    }


    @GetMapping
    public ResponseEntity<?> list() {
        return ResponseEntity.ok(repository.listAll());
    }


}
