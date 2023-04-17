package shop.readmecorp.adminserverreadme.modules.file.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import shop.readmecorp.adminserverreadme.modules.file.entity.File;

public interface FileRepository extends JpaRepository<File, Integer> {
}
