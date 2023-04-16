package MyApp.Controller;

import MyApp.Model.Forum;
import MyApp.Service.ForumService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@CrossOrigin("*")
@RestController
public class ForumController {

    ForumService forumService;

    @Autowired
    public ForumController(ForumService forumService) {
        this.forumService = forumService;
    }

    @PostMapping("forum")
    public Forum addForum(@RequestBody Forum forum) {
        return forumService.addForum(forum);
    }

    @GetMapping("forums/{course_id}")
    public List<Forum> getAllForumsByCourseId(@PathVariable int course_id) {
        return forumService.getAllForumsByCourseId(course_id);
    }
}
