package shop.readmecorp.adminserverreadme.modules.review.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import shop.readmecorp.adminserverreadme.modules.review.entity.Review;

public interface ReviewRepository extends JpaRepository<Review, Integer> {
}
