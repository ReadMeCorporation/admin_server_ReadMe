package shop.readmecorp.adminserverreadme.modules.payment.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import shop.readmecorp.adminserverreadme.modules.payment.entity.MembershipPayment;

public interface MembershipPaymentRepository extends JpaRepository<MembershipPayment, Integer> {
}
