package MyApp.Controller;

import MyApp.Model.Courses;
import MyApp.Service.CourseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.http.HttpStatus;


import java.util.List;

@RestController
@RequestMapping("/courses/")
@CrossOrigin(origins="*")
public class CourseController {
    private final CourseService courseService;

    @Autowired
    public CourseController(CourseService courseService) {
        this.courseService = courseService;
    }

    @GetMapping("all")
    public ResponseEntity<List<Courses>> getAllCourses() {
        List<Courses> courses = courseService.getAllCourses();
        return new ResponseEntity<>(courses, HttpStatus.OK);
    }
    @PostMapping("add")
    public ResponseEntity<Courses> addCourse(@RequestBody Courses course){
        Courses newCourse = courseService.addCourse(course);
        return new ResponseEntity<>(course, HttpStatus.CREATED);
    }
    @DeleteMapping("delete/{id}")
    public ResponseEntity<?> deleteCourse(@PathVariable("id") Long id){
        courseService.deleteCourse(id);
        return new ResponseEntity<>(HttpStatus.OK);
    }
    @PutMapping("update")
    public ResponseEntity<Courses> updateCourse(@RequestBody Courses course) {
        Courses updatedCourse = courseService.updateCourse(course);
        return new ResponseEntity<>(updatedCourse, HttpStatus.CREATED);
    }
    @GetMapping("find/{id}")
    public ResponseEntity<Courses> getCourseById(@PathVariable("id") Long id){
        Courses course = courseService.getCourseById(id);
        return new ResponseEntity<>(course, HttpStatus.OK);

    }
}
