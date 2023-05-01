package shop.readmecorp.adminserverreadme.modules.bookupdatelist.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import shop.readmecorp.adminserverreadme.modules.bookupdatelist.entity.BookUpdateList;
import shop.readmecorp.adminserverreadme.modules.bookupdatelist.enums.BookUpdateListStatus;

import java.util.List;

public interface BookUpdateListRepository extends JpaRepository<BookUpdateList, Integer> {

    @Query("select b from BookUpdateList b where b.status = :status")
    List<BookUpdateList> findByStatus(@Param("status") BookUpdateListStatus status);

}
