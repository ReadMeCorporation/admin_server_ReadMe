package shop.readmecorp.adminserverreadme.modules.file.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import shop.readmecorp.adminserverreadme.modules.file.entity.File;
import shop.readmecorp.adminserverreadme.modules.file.entity.FileInfo;

import java.util.List;

public interface FileRepository extends JpaRepository<File, Integer> {

    List<File> findByFileInfo(FileInfo fileInfo);
}
