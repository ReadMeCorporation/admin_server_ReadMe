package shop.readmecorp.adminserverreadme.modules.publisher.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import shop.readmecorp.adminserverreadme.modules.publisher.entity.Publisher;

import java.util.Optional;

public interface PublisherRepository extends JpaRepository<Publisher, Integer> {

    @Query("select p from Publisher p where p.username = :username")
    Optional<Publisher> findByUsername(@Param("username") String username);

    @Query("select p from Publisher p where p.businessName = :business_name")
    Optional<Publisher> findByBusinessName(@Param("business_name") String businessName);

    @Query("select p from Publisher p where p.username = :username and p.password = :password")
    Optional<Publisher> findByUsernameAndPassword(@Param("username") String username, @Param("password") String password);


}
