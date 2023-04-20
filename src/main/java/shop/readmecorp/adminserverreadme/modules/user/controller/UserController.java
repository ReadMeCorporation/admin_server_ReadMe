package shop.readmecorp.adminserverreadme.modules.user.controller;


import org.springframework.web.bind.annotation.RestController;
import shop.readmecorp.adminserverreadme.modules.user.service.UserService;

@RestController
public class UserController {

    private final UserService userService;

    public UserController(UserService userService) {
        this.userService = userService;
    }
}
