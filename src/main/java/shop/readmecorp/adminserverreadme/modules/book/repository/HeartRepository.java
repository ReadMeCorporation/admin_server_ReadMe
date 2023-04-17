package shop.readmecorp.adminserverreadme.modules.book.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import shop.readmecorp.adminserverreadme.modules.book.entity.Heart;

public interface HeartRepository extends JpaRepository<Heart, Integer> {
}
