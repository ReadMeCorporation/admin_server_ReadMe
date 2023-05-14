package shop.readmecorp.adminserverreadme.modules.book.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import shop.readmecorp.adminserverreadme.modules.book.entity.Book;
import shop.readmecorp.adminserverreadme.modules.book.enums.BookStatus;

import java.util.List;

public interface BookRepository extends JpaRepository<Book, Integer> {

    @Query("select b from Book b where b.status = :status")
    Page<Book> findByStatusActive(@Param("status") BookStatus status, Pageable pageable);

    @Query("select b from Book b where b.publisher.id = :publisherId and (b.status = :status1 or b.status = :status2 or b.status = :status3)")
    Page<Book> findByPublisherIdAndStatusActiveOrUpdateRequestOrDeleteRequest(@Param("publisherId") Integer publisherId,@Param("status1") BookStatus status1, @Param("status2") BookStatus status2,@Param("status3") BookStatus status3, Pageable pageable);

    @Query("select b from Book b where b.status = :status1 OR b.status = :status2")
    Page<Book> findByStatusActiveOrDelete(@Param("status1") BookStatus status1, @Param("status2") BookStatus status2, Pageable pageable);

    @Query("select b from Book b where b.status = :status ")
    Page<Book> findByStatusWait(@Param("status") BookStatus status, Pageable pageable);

    @Query("select b from Book b where b.publisher.id = :publisherId AND (b.status = :status1 OR b.status = :status2)")
    List<Book> findByStatusWaitOrRejected(@Param("status1") BookStatus status1, @Param("status2") BookStatus status2, Integer publisherId);

    @Query("select b from Book b where b.publisher.id = :publisherId")
    Page<Book> findByPublisherId(@Param("publisherId") Integer publisherId, Pageable pageable);

    Page<Book> findByStatusNot(BookStatus status, Pageable pageable);
}
