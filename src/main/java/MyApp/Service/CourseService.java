package MyApp.Service;

import MyApp.Model.Courses;
import MyApp.Repository.CourseRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CourseService {
    private final CourseRepo courseRepo;
    @Autowired // this is a dependency injection
    public CourseService(CourseRepo courseRepo) {
        this.courseRepo = courseRepo;
    }
    //returns a list of all courses
    public List<Courses> getAllCourses(){
    return courseRepo.findAll();

    }
    //adds a new course to Courses
    public Courses addCourse(Courses course){
        return courseRepo.save(course);
    }
    // delete a course
    public void deleteCourse(Long id){
        courseRepo.deleteById(id);
    }
    // updates a course
    public Courses updateCourse(Courses course){
        return  courseRepo.save(course);
    }
    // find a course by its id.  The get() handles the Optional situation in case the course doesn't exist.
    public Courses getCourseById(Long id){
        return courseRepo.findById(id).get();
    }
}
