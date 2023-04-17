package shop.readmecorp.adminserverreadme.modules.user.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import shop.readmecorp.adminserverreadme.modules.user.entity.User;

public interface UserRepository extends JpaRepository<User, Integer> {
}
