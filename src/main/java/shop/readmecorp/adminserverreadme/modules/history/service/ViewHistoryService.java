package shop.readmecorp.adminserverreadme.modules.history.service;

import org.springframework.stereotype.Service;
import shop.readmecorp.adminserverreadme.modules.history.repository.ViewHistoryRepository;

@Service
public class ViewHistoryService {

    private ViewHistoryRepository viewHistoryRepository;

    public ViewHistoryService(ViewHistoryRepository viewHistoryRepository) {
        this.viewHistoryRepository = viewHistoryRepository;
    }
}
