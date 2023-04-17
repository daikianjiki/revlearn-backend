package MyApp.Model;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import jakarta.persistence.*;
import lombok.*;

@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
@EqualsAndHashCode
@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
public class Student {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column
    private String firstname;
    @Column
    private String lastname;
    @Column
    private String address;
    @Column
    private String phone_number;
    @Column
    private String dob;


    @OneToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "loginFK")
    private Login login;
}
