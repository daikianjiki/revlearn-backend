package MyApp.Repository;

import MyApp.Model.Gradebook;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface GradebookRepository extends JpaRepository<Gradebook, Long> {

    List<Gradebook> findAllByStudentId(int studentId);
}
