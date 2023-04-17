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

    public Student registerStudent(Student student, long id) {
        Login login = loginRepository.findById(id).get();
        login.setStudent(student);
        student.setLogin(login);
        return studentRepository.save(student);
    }

    public List<Student> getAllStudent() {
        return studentRepository.findAll();
    }
}
