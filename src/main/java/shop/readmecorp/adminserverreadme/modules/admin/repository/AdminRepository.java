package shop.readmecorp.adminserverreadme.modules.admin.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import shop.readmecorp.adminserverreadme.modules.admin.entity.Admin;

import java.util.Optional;

public interface AdminRepository extends JpaRepository <Admin, Integer> {

    @Query("select a from Admin a where a.username = :username and a.password = :password")
    Optional<Admin> findByUsernameAndPassword(@Param("username") String username, @Param("password") String password);

}
