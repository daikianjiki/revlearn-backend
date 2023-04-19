package MyApp.Model;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import jakarta.persistence.*;
import lombok.*;

@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
@EqualsAndHashCode
@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
public class Student {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column
    private String firstname = "temp";
    @Column
    private String lastname = "temp";
    @Column
    private String address = "temp";
    @Column
    private String phone_number = "(123)-123-1234";
    @Column
    private String dob = "00/00/0000";


    @OneToOne(fetch = FetchType.EAGER)
    @JsonBackReference
    @JoinColumn(name = "login_id")
    private Login login;

    @Override
    public String toString() {
        return "Student{" +
                "id=" + id +
                ", firstname='" + firstname + '\'' +
                ", lastname='" + lastname + '\'' +
                ", address='" + address + '\'' +
                ", phone_number='" + phone_number + '\'' +
                ", dob='" + dob + '\'' +
                '}';
    }
}
