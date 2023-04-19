package MyApp.Controller;

import MyApp.Model.Gradebook;
import MyApp.Service.GradebookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@CrossOrigin("*")
@RestController
public class GradebookController {

    GradebookService gradebookService;

    @Autowired
    public GradebookController(GradebookService gradebookService) {
        this.gradebookService = gradebookService;
    }

    @PostMapping("gradebook")
    public Gradebook addGradebook(@RequestBody Gradebook gradebook) {
        return gradebookService.addGradebook(gradebook);
    }

    @GetMapping("gradebooks/{studentid}")
    public List<Gradebook> getAllGradebooksByCourseId(@PathVariable int studentid) {
        return gradebookService.getAllGradebooksByStudentId(studentid);
    }

    @PatchMapping("gradebook/{gradeId}")
    public void updateGradebook(@RequestBody Gradebook gradebook) {
        gradebookService.updateGradebook(gradebook.getGradeId(), gradebook.getGrades());
    }
}
