package shop.readmecorp.adminserverreadme.modules.admin.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import shop.readmecorp.adminserverreadme.modules.admin.entity.Admin;

public interface AdminRepository extends JpaRepository <Admin, Integer> {
}
