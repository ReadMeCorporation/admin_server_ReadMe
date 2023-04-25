package shop.readmecorp.adminserverreadme.modules.user.controller;


import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.Pageable;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.*;
import shop.readmecorp.adminserverreadme.common.exception.Exception400;
import shop.readmecorp.adminserverreadme.modules.user.UserConst;
import shop.readmecorp.adminserverreadme.modules.user.request.UserUpdateRequest;
import shop.readmecorp.adminserverreadme.modules.user.response.UserResponse;
import shop.readmecorp.adminserverreadme.modules.user.dto.UserDTO;
import shop.readmecorp.adminserverreadme.modules.user.entity.User;
import shop.readmecorp.adminserverreadme.modules.user.service.UserService;

import javax.validation.Valid;
import java.util.stream.Collectors;

@RestController
@RequestMapping("/users")
public class UserController {

    private final UserService userService;

    public UserController(UserService userService) {
        this.userService = userService;
    }

    @GetMapping
    public ResponseEntity<Page<UserDTO>> getPage(Pageable pageable) {
        var page = userService.getPage(pageable);
        var content = page.getContent()
                .stream()
                .map(User::toDTO)
                .collect(Collectors.toList());

        return ResponseEntity.ok(
                new PageImpl<>(content, pageable, page.getTotalElements())
        );
    }

    @PutMapping("/{id}")
    public ResponseEntity<UserResponse> updateState (
            @Valid @RequestBody UserUpdateRequest request,
            Errors error,
            @PathVariable Integer id
    ) {
        if (error.hasErrors()) {
            throw new Exception400(error.getAllErrors().get(0).getDefaultMessage());
        }

        var optionalUser = userService.getUser(id);
        if (optionalUser.isEmpty()) {
            throw new Exception400(UserConst.notFound);
        }

        var user = userService.updateState(request, optionalUser.get());
        return ResponseEntity.ok(user.toResponse());
    }
}
