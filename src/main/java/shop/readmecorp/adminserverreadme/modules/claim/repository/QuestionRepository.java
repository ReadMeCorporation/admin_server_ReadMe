package shop.readmecorp.adminserverreadme.modules.claim.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import shop.readmecorp.adminserverreadme.modules.claim.entity.Question;

public interface QuestionRepository extends JpaRepository<Question, Integer> {
}
