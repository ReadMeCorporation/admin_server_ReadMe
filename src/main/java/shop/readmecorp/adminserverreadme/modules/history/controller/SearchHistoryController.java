package shop.readmecorp.adminserverreadme.modules.history.controller;

import org.springframework.web.bind.annotation.RestController;
import shop.readmecorp.adminserverreadme.modules.history.service.SearchHistoryService;

@RestController
public class SearchHistoryController {

    private SearchHistoryService searchHistoryService;

    public SearchHistoryController(SearchHistoryService searchHistoryService) {
        this.searchHistoryService = searchHistoryService;
    }
}
