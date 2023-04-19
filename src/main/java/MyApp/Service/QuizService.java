package MyApp.Service;

import MyApp.Model.Quiz;
import MyApp.Repository.QuizRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import java.util.Collections;
import java.util.List;

@Service
public class QuizService {
    QuizRepository quizRepository;
    @Autowired
    QuizService(QuizRepository quizRepository) {
        this.quizRepository = quizRepository;
    }

    public ResponseEntity<List<Quiz>> getAllQuizzes() {
        return new ResponseEntity<>(this.quizRepository.findAll(), HttpStatus.OK);
    }
    public ResponseEntity<?> getQuizById(long id) {
        return new ResponseEntity<>(this.quizRepository.findById(id), HttpStatus.OK);
    }

    public ResponseEntity<?> createQuiz(Quiz quiz) {
        return new ResponseEntity<>(this.quizRepository.save(quiz), HttpStatus.OK);
    }

    public List<String> getAllQuizByCourseId(long id) {

        return this.quizRepository.findQuizNamesByCourseId(id);
    }

    public List<Quiz> getQuizByQuizName(String quizName) {
        return this.quizRepository.findByQuizName(quizName);
    }
}
