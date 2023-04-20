package shop.readmecorp.adminserverreadme.modules.file.controller;

import org.springframework.web.bind.annotation.RestController;
import shop.readmecorp.adminserverreadme.modules.file.service.FileService;

@RestController
public class FileController {

    private final FileService fileService;

    public FileController(FileService fileService) {
        this.fileService = fileService;
    }
}
