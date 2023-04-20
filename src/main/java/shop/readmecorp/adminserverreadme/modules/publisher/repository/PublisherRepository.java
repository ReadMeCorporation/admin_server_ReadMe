package shop.readmecorp.adminserverreadme.modules.publisher.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import shop.readmecorp.adminserverreadme.modules.publisher.entity.Publisher;

public interface PublisherRepository extends JpaRepository<Publisher, Integer> {
}
