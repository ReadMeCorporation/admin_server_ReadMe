package shop.readmecorp.adminserverreadme.modules.claim.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ClaimController {

    @GetMapping("/publishers/claims")
    public String publisherClaim(){
        return "/publisher/claimmanage/claimList";
    }

    @GetMapping("/admins/claims")
    public String adminClaim(){
        return "/admin/claimmanage/claimList";
    }
}
