package shop.readmecorp.adminserverreadme.modules.file.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import shop.readmecorp.adminserverreadme.modules.file.entity.File;
import shop.readmecorp.adminserverreadme.modules.file.entity.FileInfo;
import shop.readmecorp.adminserverreadme.modules.file.enums.FileStatus;
import shop.readmecorp.adminserverreadme.modules.file.repository.FileRepository;

@Service
public class FileService {

    private final FileRepository fileRepository;

    public FileService(FileRepository fileRepository) {
        this.fileRepository = fileRepository;
    }

    @Transactional
    public File save(FileInfo fileInfo, String fileName, String fileUrl){

        File file = File.builder()
                .fileInfo(fileInfo)
                .fileName(fileName)
                .fileUrl(fileUrl)
                .status(FileStatus.WAIT)
                .build();

        return fileRepository.save(file);

    }
}
