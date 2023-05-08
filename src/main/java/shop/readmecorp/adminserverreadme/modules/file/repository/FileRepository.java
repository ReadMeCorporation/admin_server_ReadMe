package shop.readmecorp.adminserverreadme.modules.file.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import shop.readmecorp.adminserverreadme.modules.file.entity.File;
import shop.readmecorp.adminserverreadme.modules.file.entity.FileInfo;

import java.util.List;

public interface FileRepository extends JpaRepository<File, Integer> {

    File findByFileInfo_Id(Integer fileInfo_id);

    List<File> findByFileInfo(FileInfo fileInfo);
}
