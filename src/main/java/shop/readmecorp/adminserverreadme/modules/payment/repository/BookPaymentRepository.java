package shop.readmecorp.adminserverreadme.modules.payment.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import shop.readmecorp.adminserverreadme.modules.payment.entity.BookPayment;

public interface BookPaymentRepository extends JpaRepository<BookPayment, Integer> {
}
