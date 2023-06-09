package shop.readmecorp.adminserverreadme.modules.admin.controller;

import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import shop.readmecorp.adminserverreadme.common.exception.CustomException;
import shop.readmecorp.adminserverreadme.modules.admin.entity.Admin;
import shop.readmecorp.adminserverreadme.modules.admin.request.AdminLoginRequest;
import shop.readmecorp.adminserverreadme.modules.admin.service.AdminService;
import shop.readmecorp.adminserverreadme.util.AccountRoleValidator;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

@Controller
@RequestMapping("/admins")
public class AdminController {

    private final AdminService adminService;
    private final HttpSession session;
    private final AccountRoleValidator roleValidator;

    public AdminController(AdminService adminService, HttpSession session, AccountRoleValidator roleValidator) {
        this.adminService = adminService;
        this.session = session;
        this.roleValidator = roleValidator;
    }


    @GetMapping("/loginForm")
    public String loginForm(){
        return "/admin/account/loginForm";
    }

    @PostMapping("/login")
    public String login(@Valid AdminLoginRequest request, Errors error){

        if (error.hasErrors()) {
            throw new CustomException(error.getAllErrors().get(0).getDefaultMessage(), HttpStatus.BAD_REQUEST);
        }

        // 로그인 하기
        Admin principal = adminService.login(request);

        // 세션에 저장
        session.setAttribute("principal",principal);
        session.setAttribute("userRole", "admin");

        // 유효성 검사
        if(session.getAttribute("principal") == null){
            throw new CustomException("존재하지 않는 아이디거나 비밀번호를 다시 확인해주시기 바랍니다.");
        }

        return "redirect:/admins/userManage";
    }

    @GetMapping("/userManage")
    public String userManage(){
        // 권한체크 (어드민계정인지)
        roleValidator.validateAdminRole();

        return "/admin/usermanage/userManage";
    }

    @GetMapping("/publisherList")
    public String publisherList(){
        // 권한체크 (어드민계정인지)
        roleValidator.validateAdminRole();

        return "/admin/publishermanage/publisherList";
    }

    @GetMapping("/publisherManage")
    public String publisherManage(){
        // 권한체크 (어드민계정인지)
        roleValidator.validateAdminRole();

        return "/admin/publishermanage/publisherManage";
    }
}
