package shop.readmecorp.adminserverreadme.modules.payment.service;

import org.springframework.stereotype.Service;
import shop.readmecorp.adminserverreadme.modules.payment.repository.MembershipPaymentRepository;

@Service
public class MembershipPaymentService {

    private final MembershipPaymentRepository membershipPaymentRepository;

    public MembershipPaymentService(MembershipPaymentRepository membershipPaymentRepository) {
        this.membershipPaymentRepository = membershipPaymentRepository;
    }
}
