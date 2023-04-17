package shop.readmecorp.adminserverreadme.modules.membership.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import shop.readmecorp.adminserverreadme.modules.membership.entity.Membership;

public interface MembershipRepository extends JpaRepository<Membership, Integer> {
}
