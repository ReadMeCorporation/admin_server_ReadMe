package shop.readmecorp.adminserverreadme.modules.claim.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import shop.readmecorp.adminserverreadme.modules.book.entity.Book;
import shop.readmecorp.adminserverreadme.modules.claim.entity.Question;
import shop.readmecorp.adminserverreadme.modules.publisher.entity.Publisher;

public interface QuestionRepository extends JpaRepository<Question, Integer> {

//    @Query("select q from Question q where q.publisher.id = :publisherId")
//    Page<Question> findByPublisherId(@Param("publisherId") Integer publisherId, Pageable pageable);

    Page<Question> findByPublisher(Publisher publisher, Pageable pageable);

    @Query("select q from Question q where q.publisher.id = :publisherId")
    Page<Question> findByPublisherId(@Param("publisherId") Integer publisherId, Pageable pageable);

}
