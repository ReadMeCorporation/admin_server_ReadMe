package shop.readmecorp.adminserverreadme.modules.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import shop.readmecorp.adminserverreadme.common.exception.CustomException;
import shop.readmecorp.adminserverreadme.modules.admin.entity.Admin;
import shop.readmecorp.adminserverreadme.modules.admin.request.AdminLoginRequest;
import shop.readmecorp.adminserverreadme.modules.admin.service.AdminService;
import shop.readmecorp.adminserverreadme.modules.publisher.entity.Publisher;
import shop.readmecorp.adminserverreadme.modules.publisher.request.PublisherLoginRequest;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

@Controller
@RequestMapping("/admin")
public class AdminController {

    private final AdminService adminService;
    private final HttpSession session;

    public AdminController(AdminService adminService, HttpSession session) {
        this.adminService = adminService;
        this.session = session;
    }


    @GetMapping("/loginForm")
    public String loginForm(){
        return "/admin/account/loginForm";
    }

    @PostMapping("/login")
    public String login(@Valid AdminLoginRequest request){

        // 로그인 하기
        Admin principal = adminService.login(request);

        // 세션에 저장
        session.setAttribute("principal",principal);

        // 유효성 검사
        if(session.getAttribute("principal") == null){
            throw new CustomException("존재하지 않는 아이디거나 비밀번호를 다시 확인해주시기 바랍니다.");
        }

        return "redirect:/admins/books";
    }
}
