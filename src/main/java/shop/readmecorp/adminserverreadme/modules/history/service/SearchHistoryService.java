package shop.readmecorp.adminserverreadme.modules.history.service;

import org.springframework.stereotype.Service;
import shop.readmecorp.adminserverreadme.modules.history.repository.SearchHistoryRepository;

@Service
public class SearchHistoryService {

    private SearchHistoryRepository searchHistoryRepository;

    public SearchHistoryService(SearchHistoryRepository searchHistoryRepository) {
        this.searchHistoryRepository = searchHistoryRepository;
    }
}
