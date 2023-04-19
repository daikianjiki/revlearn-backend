package MyApp.Service;

import MyApp.Model.Login;
import MyApp.Model.Student;
import MyApp.Repository.LoginRepository;
import MyApp.Repository.StudentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StudentService {
    StudentRepository studentRepository;
    LoginRepository loginRepository;

    @Autowired
    public StudentService(StudentRepository studentRepository, LoginRepository loginRepository) {
        this.studentRepository = studentRepository;
        this.loginRepository = loginRepository;
    }

    /**
     * Register a new student that is attached to a login
     * @param student
     * @param id
     * @return
     */
    public Student registerStudent(Student student, long id) {
        Login login = loginRepository.findById(id).get();
        login.setStudent(student);
        student.setLogin(login);
        return studentRepository.save(student);
    }

    /**
     * get all students currently enrolled
     * @return
     */
    public List<Student> getAllStudent() {
        return studentRepository.findAll();
    }


    public Student editStudent(long id, Student student) {
        if(studentRepository.existsById(id)){
            Student studentOnDb = studentRepository.findById(id).get();
            student.setId(id);
            student.setLogin(studentOnDb.getLogin());
            studentOnDb = student;
            return studentRepository.save(studentOnDb);
        }
        return null;
    }
}
