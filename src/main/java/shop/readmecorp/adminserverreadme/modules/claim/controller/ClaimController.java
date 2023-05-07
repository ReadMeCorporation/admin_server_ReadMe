package shop.readmecorp.adminserverreadme.modules.claim.controller;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@Controller
public class ClaimController {


    @GetMapping("/publishers/claims")
    public String publishersClaim(){
        return "/publisher/claimmanage/claimList";
    }

//    @GetMapping("/publishers/claims/detail")
//    public String adminsDetail(){
//        return "/publisher/claimmanage/claimDetail";
//    }

    @GetMapping("/admins/claims/detail/{id}")
    public String adminsClaimsDetail(@PathVariable Integer id){
        return "/admin/claimmanage/claimDetail";
    }

    @GetMapping("/publishers/claims/detail/{id}")
    public String publishersClaimsDetail(@PathVariable Integer id){
        return "/publisher/claimmanage/claimDetail";
    }

    // 출판사 문의하기
    @GetMapping("/publishers/claims/saveForm")
    public String publishersClaimSaveForm(){
        return "/publisher/claimmanage/questionSaveForm";
    }

    // 어드민 문의 답변
    @GetMapping("/admins/claims/saveForm/{id}")
    public String adminsClaimSaveForm(@PathVariable Integer id){
        return "/admin/claimmanage/answerSaveForm";
    }


    // 어드민 문의내역 전체
    @GetMapping("/admins/claims")
    public String adminsClaim(){
        return "/admin/claimmanage/claimList";
    }

    // 어드민 문의내역 출판사
    @GetMapping("/admins/claims/publishers")
    public String publishersClaimList(){
        return "/admin/claimmanage/publishersClaimList";
    }

    // 어드민 문의내역 유저
    @GetMapping("/admins/claims/users")
    public String usersClaimList(){
        return "/admin/claimmanage/usersClaimList";
    }


}
