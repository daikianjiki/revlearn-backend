package MyApp.Model;

import jakarta.persistence.*;
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
    @Column
    private Long educatorId;
    @Column
    private String name; // added field as there was no field for the actual name of the course
    @Column
    private String keywords;
    @Column
    private String category;
    @Column
    private Integer courseLevel;
    @Column
    private String description;
    @Column
    private Double cost;

}