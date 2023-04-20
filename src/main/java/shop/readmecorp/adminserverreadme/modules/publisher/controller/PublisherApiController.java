package shop.readmecorp.adminserverreadme.modules.publisher.controller;

import org.springframework.web.bind.annotation.RestController;
import shop.readmecorp.adminserverreadme.modules.publisher.service.PublisherService;

@RestController
public class PublisherApiController {

    private final PublisherService publisherService;

    public PublisherApiController(PublisherService publisherService) {
        this.publisherService = publisherService;
    }


}
