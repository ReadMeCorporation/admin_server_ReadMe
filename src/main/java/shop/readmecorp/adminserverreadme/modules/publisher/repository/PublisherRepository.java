package shop.readmecorp.adminserverreadme.modules.publisher.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import shop.readmecorp.adminserverreadme.modules.publisher.entity.Publisher;
import shop.readmecorp.adminserverreadme.modules.publisher.enums.PublisherStatus;

import java.util.Optional;

public interface PublisherRepository extends JpaRepository<Publisher, Integer> {

    @Query("select p from Publisher p where p.username = :username")
    Optional<Publisher> findByUsername(@Param("username") String username);

    @Query("select p from Publisher p where p.businessName = :business_name")
    Optional<Publisher> findByBusinessName(@Param("business_name") String businessName);

    @Query("select p from Publisher p where p.username = :username and p.password = :password")
    Optional<Publisher> findByUsernameAndPassword(@Param("username") String username, @Param("password") String password);

    @Query("select p from Publisher p where p.status = :status1 OR p.status = :status2")
    Page<Publisher> findByStatusActiveOrDelete(@Param("status1") PublisherStatus status1, @Param("status2") PublisherStatus status2, Pageable pageable);

    @Query("select p from Publisher p where p.status = :status ")
    Page<Publisher> findByStatusWait(@Param("status") PublisherStatus status,Pageable pageable);
}
