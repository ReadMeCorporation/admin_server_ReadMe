package shop.readmecorp.adminserverreadme.modules.book.controller;

import org.springframework.web.bind.annotation.RestController;
import shop.readmecorp.adminserverreadme.modules.book.service.HeartService;

@RestController
public class HeartController {

    private HeartService heartService;

    public HeartController(HeartService heartService) {
        this.heartService = heartService;
    }
}
