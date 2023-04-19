package MyApp.Model;

import com.fasterxml.jackson.annotation.JsonManagedReference;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;
import java.util.Set;

@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
@Table
public class Courses {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long course_id;
    @Column
    private Long educator_id;
    @Column
    private String name; // added field as there was no field for the actual name of the course
    @Column
    private String keywords;
    @Column
    private String category;
    @Column
    private Integer course_level;
    @Column
    private String description;
    @Column
    private Double cost;


}




