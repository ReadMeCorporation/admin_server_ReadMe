package shop.readmecorp.adminserverreadme.modules.book.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import shop.readmecorp.adminserverreadme.modules.book.entity.Heart;
import shop.readmecorp.adminserverreadme.modules.book.enums.HeartStatus;

public interface HeartRepository extends JpaRepository<Heart, Integer> {

    // 지정된 bookId와 status를 가진 Heart 엔티티의 개수를 세는 메서드
    @Query("SELECT COUNT(h) FROM Heart h WHERE h.book.id = :bookId AND h.status = :status")
    Long countByBookIdAndStatus(@Param("bookId") Integer bookId, @Param("status") HeartStatus status);

}
