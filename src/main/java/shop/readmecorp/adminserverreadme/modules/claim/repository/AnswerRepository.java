package shop.readmecorp.adminserverreadme.modules.claim.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import shop.readmecorp.adminserverreadme.modules.claim.entity.Answer;

public interface AnswerRepository extends JpaRepository<Answer, Integer> {
}
