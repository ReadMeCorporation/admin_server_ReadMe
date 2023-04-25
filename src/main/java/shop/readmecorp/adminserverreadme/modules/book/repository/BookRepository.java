package shop.readmecorp.adminserverreadme.modules.book.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import shop.readmecorp.adminserverreadme.modules.book.entity.Book;
import shop.readmecorp.adminserverreadme.modules.book.enums.BookStatus;
import shop.readmecorp.adminserverreadme.modules.publisher.entity.Publisher;
import shop.readmecorp.adminserverreadme.modules.publisher.enums.PublisherStatus;

public interface BookRepository extends JpaRepository<Book, Integer> {

    @Query("select b from Book b where b.status = :status1 OR b.status = :status2")
    Page<Book> findByStatusActiveOrDelete(@Param("status1") BookStatus status1, @Param("status2") BookStatus status2, Pageable pageable);

    @Query("select b from Book b where b.status = :status ")
    Page<Book> findByStatusWait(@Param("status") BookStatus status, Pageable pageable);
}
