package shop.readmecorp.adminserverreadme.modules.file.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import shop.readmecorp.adminserverreadme.modules.file.entity.FileInfo;
import shop.readmecorp.adminserverreadme.modules.file.enums.FileType;
import shop.readmecorp.adminserverreadme.modules.file.repository.FileInfoRepository;

@Service
public class FileInfoService {

    private final FileInfoRepository fileInfoRepository;

    public FileInfoService(FileInfoRepository fileInfoRepository) {
        this.fileInfoRepository = fileInfoRepository;
    }

    @Transactional
    public FileInfo save(FileType fileType){
        FileInfo fileInfo = FileInfo.builder()
                .type(fileType).build();

        return fileInfoRepository.save(fileInfo);

    }
}
