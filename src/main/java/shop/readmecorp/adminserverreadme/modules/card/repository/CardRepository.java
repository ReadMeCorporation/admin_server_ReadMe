package shop.readmecorp.adminserverreadme.modules.card.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import shop.readmecorp.adminserverreadme.modules.card.entity.Card;

public interface CardRepository extends JpaRepository<Card, Integer> {
}
