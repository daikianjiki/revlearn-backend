package MyApp.Controller;

import MyApp.Model.Student;
import MyApp.Service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@CrossOrigin(origins = {"http://localhost:4200", "http://localhost:3000"}, allowCredentials = "true")
@RestController
public class StudentController {
    StudentService studentService;

    @Autowired
    public StudentController(StudentService studentService) {
        this.studentService = studentService;
    }

    /**
     * 1. A user should be able to register a new student
     * POST localhost:9000/student
     */
    @PostMapping("student/{id}")
    public Student registerStudent(@PathVariable long id, @RequestBody Student student) {
        return studentService.registerStudent(student,id);
    }

    /**
     * 1.1 A user should be able to see all students
     * GET localhost:9000/student
     */
    @GetMapping("student")
    public List<Student> getAllStudent() {
        return studentService.getAllStudent();
    }
}
