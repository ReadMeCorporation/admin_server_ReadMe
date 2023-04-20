package shop.readmecorp.adminserverreadme.modules.book.service;

import org.springframework.stereotype.Service;
import shop.readmecorp.adminserverreadme.modules.book.repository.HeartRepository;

@Service
public class HeartService {

    private HeartRepository heartRepository;

    public HeartService(HeartRepository heartRepository) {
        this.heartRepository = heartRepository;
    }
}
