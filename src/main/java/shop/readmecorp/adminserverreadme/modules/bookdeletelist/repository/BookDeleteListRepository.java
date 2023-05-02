package shop.readmecorp.adminserverreadme.modules.bookdeletelist.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import shop.readmecorp.adminserverreadme.modules.bookdeletelist.entity.BookDeleteList;
import shop.readmecorp.adminserverreadme.modules.bookdeletelist.enums.BookDeleteListStatus;

import java.util.List;
import java.util.Optional;

public interface BookDeleteListRepository extends JpaRepository<BookDeleteList, Integer> {


    @Query("select b from BookDeleteList b where b.book.id = :bookId")
    Optional<BookDeleteList> findByBookId(Integer bookId);

    @Query("select b from BookDeleteList b where b.status = :status")
    List<BookDeleteList> findByStatus(@Param("status") BookDeleteListStatus status);
}
