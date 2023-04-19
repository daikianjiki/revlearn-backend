package MyApp.Service;

import MyApp.Exceptions.UnauthorizedUserException;
import MyApp.Model.Login;
import MyApp.Model.Student;
import MyApp.Repository.LoginRepository;
import MyApp.Repository.StudentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class LoginService {
    LoginRepository loginRepository;
    StudentRepository studentRepository;

    @Autowired
    public LoginService(LoginRepository loginRepository, StudentRepository studentRepository) {
        this.loginRepository = loginRepository;
        this.studentRepository = studentRepository;
    }

    /**
     * register a new user
     * @param login
     * @return
     */
    public Login register(Login login) {
        if(login.getUser_type().equals("student")){
            Student student = new Student();
            student = studentRepository.save(student);
            login.setStudent(student);
            return loginRepository.save(login);
        }
        else if(login.getUser_type().equals("educator")){

        }
        else if(login.getUser_type().equals("admin")){

        }
        return loginRepository.save(login);
    }

    /**
     * Get all login credentials
     * @return all login credentials
     */
    public List<Login> getAllLogin() {
        return loginRepository.findAll();
    }

    /**
     * posts a new login and returns the user account if successful,
     * @param login
     * @return user account (Student,Educator, or Admin)
     * @throws UnauthorizedUserException
     */
    public Object login(Login login) throws UnauthorizedUserException {
        Login loginOnDB = loginRepository.findByEmail(login.getEmail());

        if(loginOnDB.getPassword().equals(login.getPassword())) {
            if(loginOnDB.getUser_type().equals("student")) return loginOnDB.getStudent();
        }
        else {
            throw new UnauthorizedUserException();
        }

        return null;
    }


    public Login editAccount(Login login, long id) {
        Login login1 = loginRepository.findById(id).get();
        login1.setEmail(login.getEmail());
        login1.setPassword(login.getPassword());
        login1.setUser_type(login.getUser_type());
        login1.setStatus(login.getStatus());


        if(login.getStudent() != null && login1.getUser_type().equals("student")) {
            login1.setStudent(login.getStudent());
        }
        return loginRepository.save(login1);
    }
}
