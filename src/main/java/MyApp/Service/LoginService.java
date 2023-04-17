package MyApp.Service;

import MyApp.Model.Login;
import MyApp.Repository.LoginRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class LoginService {
    LoginRepository loginRepository;

    @Autowired
    public LoginService(LoginRepository loginRepository) {
        this.loginRepository = loginRepository;
    }

    public Login register(Login login) {
        return loginRepository.save(login);
    }

    public List<Login> getAllLogin() {
        return loginRepository.findAll();
    }



}
