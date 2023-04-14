package MyApp.Model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Courses {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long courseId;
    private Long educatorId;
    private String name; // added field as there was no field for the actual name of the course
    private String keywords;
    private String category;
    private String level;
    private String description;
    private Double cost;

}

/*In satisfying user stories for students to be able to register for a class, interact within a class, get their grades for a class
there needed to be a model for a course.
This model leverages the use of Spring ORM with JpaRepository for the creation of the table and handling of they SQL calls.
It also leverages Lombok for creation of all setters, getters, and constructors.

Relationships:
1-to-many -> student < courses
1-to-many -> educators < courses
1-to-1 -> course to forum */
