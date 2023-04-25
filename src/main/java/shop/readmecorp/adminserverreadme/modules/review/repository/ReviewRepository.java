package shop.readmecorp.adminserverreadme.modules.review.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import shop.readmecorp.adminserverreadme.modules.review.entity.Review;

import java.util.List;

public interface ReviewRepository extends JpaRepository<Review, Integer> {


    List<Review> findByBookPublisherId(Integer publisherId);

}
