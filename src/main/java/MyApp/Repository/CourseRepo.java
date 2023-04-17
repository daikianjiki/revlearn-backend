
package MyApp.Repository;

import MyApp.Model.Courses;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CourseRepo extends JpaRepository<Courses, Long> {
}

/*Leveraging the JpaRepository aids with SQL queries as it has many built in methods that
have been utilized.
 */

