package MyApp.Controller;

import MyApp.Model.Quiz;
import MyApp.Service.QuizService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@CrossOrigin(origins = {"*"})
@RestController
public class QuizController {
    QuizService quizService;
    @Autowired
    QuizController(QuizService quizService) {
        this.quizService = quizService;
    }
    @GetMapping("quiz")
    public ResponseEntity<List<Quiz>> getAllQuizzes() {
        return this.quizService.getAllQuizzes();
    }
    @GetMapping("quiz/{id}")
    public ResponseEntity<?> getQuizById(@PathVariable long id) {
        return this.quizService.getQuizById(id);
    }
    @PostMapping("quiz")
    public ResponseEntity<?> createQuiz(@RequestBody Quiz quiz) {
        return this.quizService.createQuiz(quiz);
    }
    @GetMapping("courses/{id}/quiz")
    public List<Quiz> getAllQuizByCourseId(@PathVariable long id) {
        return this.quizService.getAllQuizByCourseId(id);
    }

}
