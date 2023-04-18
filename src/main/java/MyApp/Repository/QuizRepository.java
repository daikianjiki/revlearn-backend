package MyApp.Repository;

import MyApp.Model.Quiz;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface QuizRepository extends JpaRepository<Quiz, Long> {

    @Query("SELECT u FROM Quiz u GROUP BY u.quizName")
    public List<Quiz> getAllQuizByCourseId(long id);
}
