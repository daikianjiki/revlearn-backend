package MyApp.Repository;

import MyApp.Model.Quiz;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface QuizRepository extends JpaRepository<Quiz, Long> {

    @Query("SELECT DISTINCT q.quizName FROM Quiz q WHERE q.courseId = ?1")
    public List<String> findQuizNamesByCourseId(long courseId);

    public List<Quiz> findByQuizName(String quizName);
}
