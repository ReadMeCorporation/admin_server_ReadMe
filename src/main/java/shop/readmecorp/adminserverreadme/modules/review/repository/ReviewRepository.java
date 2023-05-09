package shop.readmecorp.adminserverreadme.modules.review.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import shop.readmecorp.adminserverreadme.modules.review.entity.Review;

public interface ReviewRepository extends JpaRepository<Review, Integer> {

    @Query("SELECT AVG(r.stars) FROM Review r WHERE r.book.id = :bookId")
    Double findAvgStars(Integer bookId);

    @Query("select r from Review r where r.book.publisher.id = :publisherId")
    Page<Review> findByPublisherId(@Param("publisherId") Integer publisherId, Pageable pageable);
}
