package MyApp.Repository;

import MyApp.Model.Forum;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ForumRepository extends JpaRepository<Forum, Long> {

    List<Forum> findAllByCourseId(int courseId);
}

