package shop.readmecorp.adminserverreadme.modules.payment.controller;

import org.springframework.web.bind.annotation.RestController;
import shop.readmecorp.adminserverreadme.modules.payment.service.MembershipPaymentService;

@RestController
public class MembershipPaymentController {

    private final MembershipPaymentService membershipPaymentService;

    public MembershipPaymentController(MembershipPaymentService membershipPaymentService) {
        this.membershipPaymentService = membershipPaymentService;
    }
}
