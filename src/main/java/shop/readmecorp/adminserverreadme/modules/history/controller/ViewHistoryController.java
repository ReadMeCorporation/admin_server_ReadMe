package shop.readmecorp.adminserverreadme.modules.history.controller;

import org.springframework.web.bind.annotation.RestController;
import shop.readmecorp.adminserverreadme.modules.history.service.ViewHistoryService;

@RestController
public class ViewHistoryController {

    private final ViewHistoryService viewHistoryService;

    public ViewHistoryController(ViewHistoryService viewHistoryService) {
        this.viewHistoryService = viewHistoryService;
    }
}
