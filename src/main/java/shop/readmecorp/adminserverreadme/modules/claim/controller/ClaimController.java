package shop.readmecorp.adminserverreadme.modules.claim.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import shop.readmecorp.adminserverreadme.util.AccountRoleValidator;

import javax.servlet.http.HttpSession;

@Controller
public class ClaimController {

    private final HttpSession session;
    private final AccountRoleValidator roleValidator;

    public ClaimController(HttpSession session, AccountRoleValidator roleValidator) {
        this.session = session;
        this.roleValidator = roleValidator;
    }

    @GetMapping("/publishers/claims")
    public String publishersClaim(){
        // 권한체크 (출판사계정인지)
        roleValidator.validatePublisherRole();
        return "/publisher/claimmanage/claimList";
    }

    @GetMapping("/admins/claims/detail/{id}")
    public String adminsClaimsDetail(@PathVariable Integer id){
        // 권한체크 (어드민계정인지)
        roleValidator.validateAdminRole();

        return "/admin/claimmanage/claimDetail";
    }

    @GetMapping("/publishers/claims/detail/{id}")
    public String publishersClaimsDetail(@PathVariable Integer id){
        // 권한체크 (출판사계정인지)
        roleValidator.validatePublisherRole();
        return "/publisher/claimmanage/claimDetail";
    }

    // 출판사 문의하기
    @GetMapping("/publishers/claims/saveForm")
    public String publishersClaimSaveForm(){
        // 권한체크 (출판사계정인지)
        roleValidator.validatePublisherRole();
        return "/publisher/claimmanage/questionSaveForm";
    }

    // 어드민 문의 답변
    @GetMapping("/admins/claims/saveForm/{id}")
    public String adminsClaimSaveForm(@PathVariable Integer id){
        // 권한체크 (어드민계정인지)
        roleValidator.validateAdminRole();

        return "/admin/claimmanage/answerSaveForm";
    }


    // 어드민 문의내역 전체
    @GetMapping("/admins/claims")
    public String adminsClaim(){
        // 권한체크 (어드민계정인지)
        roleValidator.validateAdminRole();

        return "/admin/claimmanage/claimList";
    }

    // 어드민 문의내역 출판사
    @GetMapping("/admins/claims/publishers")
    public String publishersClaimList(){
        // 권한체크 (어드민계정인지)
        roleValidator.validateAdminRole();
        return "/admin/claimmanage/publishersClaimList";
    }

    // 어드민 문의내역 유저
    @GetMapping("/admins/claims/users")
    public String usersClaimList(){
        // 권한체크 (어드민계정인지)
        roleValidator.validateAdminRole();
        return "/admin/claimmanage/usersClaimList";
    }


}
