package shop.readmecorp.adminserverreadme.modules.membership.service;

import org.springframework.stereotype.Service;
import shop.readmecorp.adminserverreadme.modules.membership.repository.MembershipRepository;

@Service
public class MembershipService {

    private MembershipRepository membershipRepository;

    public MembershipService(MembershipRepository membershipRepository) {
        this.membershipRepository = membershipRepository;
    }
}
