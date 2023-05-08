package shop.readmecorp.adminserverreadme.modules.claim.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import shop.readmecorp.adminserverreadme.common.exception.CustomException;

import javax.servlet.http.HttpSession;

@Controller
public class ClaimController {

    private final HttpSession session;

    public ClaimController(HttpSession session) {
        this.session = session;
    }

    @GetMapping("/publishers/claims")
    public String publishersClaim(){
        Object principal = session.getAttribute("principal");
        String userRole = (String) session.getAttribute("userRole");
        if (principal == null) {
            throw new CustomException("로그인을 해주세요");
        }
        if (!"publisher".equals(userRole)) {
            throw new CustomException("출판사 계정이 아닙니다");
        }
        return "/publisher/claimmanage/claimList";
    }

    @GetMapping("/admins/claims/detail/{id}")
    public String adminsClaimsDetail(@PathVariable Integer id){
        Object principal = session.getAttribute("principal");
        String userRole = (String) session.getAttribute("userRole");
        if (principal == null) {
            throw new CustomException("로그인을 해주세요");
        }
        if (!"admin".equals(userRole)) {
            throw new CustomException("관리자 권한이 필요합니다");
        }

        return "/admin/claimmanage/claimDetail";
    }

    @GetMapping("/publishers/claims/detail/{id}")
    public String publishersClaimsDetail(@PathVariable Integer id){
        Object principal = session.getAttribute("principal");
        String userRole = (String) session.getAttribute("userRole");
        if (principal == null) {
            throw new CustomException("로그인을 해주세요");
        }
        if (!"publisher".equals(userRole)) {
            throw new CustomException("출판사 계정이 아닙니다");
        }
        return "/publisher/claimmanage/claimDetail";
    }

    // 출판사 문의하기
    @GetMapping("/publishers/claims/saveForm")
    public String publishersClaimSaveForm(){
        Object principal = session.getAttribute("principal");
        String userRole = (String) session.getAttribute("userRole");
        if (principal == null) {
            throw new CustomException("로그인을 해주세요");
        }
        if (!"publisher".equals(userRole)) {
            throw new CustomException("출판사 계정이 아닙니다");
        }
        return "/publisher/claimmanage/questionSaveForm";
    }

    // 어드민 문의 답변
    @GetMapping("/admins/claims/saveForm/{id}")
    public String adminsClaimSaveForm(@PathVariable Integer id){
        Object principal = session.getAttribute("principal");
        String userRole = (String) session.getAttribute("userRole");
        if (principal == null) {
            throw new CustomException("로그인을 해주세요");
        }
        if (!"admin".equals(userRole)) {
            throw new CustomException("관리자 권한이 필요합니다");
        }

        return "/admin/claimmanage/answerSaveForm";
    }


    // 어드민 문의내역 전체
    @GetMapping("/admins/claims")
    public String adminsClaim(){
        Object principal = session.getAttribute("principal");
        String userRole = (String) session.getAttribute("userRole");
        if (principal == null) {
            throw new CustomException("로그인을 해주세요");
        }
        if (!"admin".equals(userRole)) {
            throw new CustomException("관리자 권한이 필요합니다");
        }

        return "/admin/claimmanage/claimList";
    }

    // 어드민 문의내역 출판사
    @GetMapping("/admins/claims/publishers")
    public String publishersClaimList(){
        Object principal = session.getAttribute("principal");
        String userRole = (String) session.getAttribute("userRole");
        if (principal == null) {
            throw new CustomException("로그인을 해주세요");
        }
        if (!"admin".equals(userRole)) {
            throw new CustomException("관리자 권한이 필요합니다");
        }
        return "/admin/claimmanage/publishersClaimList";
    }

    // 어드민 문의내역 유저
    @GetMapping("/admins/claims/users")
    public String usersClaimList(){
        Object principal = session.getAttribute("principal");
        String userRole = (String) session.getAttribute("userRole");
        if (principal == null) {
            throw new CustomException("로그인을 해주세요");
        }
        if (!"admin".equals(userRole)) {
            throw new CustomException("관리자 권한이 필요합니다");
        }
        return "/admin/claimmanage/usersClaimList";
    }


}
