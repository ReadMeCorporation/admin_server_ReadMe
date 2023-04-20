package shop.readmecorp.adminserverreadme.modules.file.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import shop.readmecorp.adminserverreadme.modules.file.entity.FileInfo;

public interface FileInfoRepository extends JpaRepository<FileInfo, Integer> {
}
