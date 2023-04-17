package MyApp.Model;

import jakarta.persistence.*;
import lombok.*;
import org.springframework.http.converter.json.GsonBuilderUtils;

import java.sql.Timestamp;

@Entity
@Data
@ToString
@EqualsAndHashCode
@AllArgsConstructor
@NoArgsConstructor
@Table
public class Forum {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int postId;
    @Column
    private int courseId;
    @Column
    private int user_Id;
    @Column
    private String textBody;
    @Column
    private Timestamp createdAt;

}
