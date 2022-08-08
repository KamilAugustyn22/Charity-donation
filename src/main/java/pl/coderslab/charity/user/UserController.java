package pl.coderslab.charity.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class UserController {
    private final UserService userService;

    public UserController(UserService userService) {
        this.userService = userService;
    }
    @GetMapping("/register")
    public String createUser(){
        return "register";
    }
    @PostMapping("/register")
    public String createUser(User user){
        userService.saveUser(user);
        return "redirect:/login";
    }
}
