package shop.readmecorp.adminserverreadme.modules.bookdeletelist.service;

import org.springframework.stereotype.Service;
import shop.readmecorp.adminserverreadme.modules.bookdeletelist.repository.BookDeleteListRepository;

@Service
public class BookDeleteListService {

    private final BookDeleteListRepository bookDeleteListRepository;

    public BookDeleteListService(BookDeleteListRepository bookDeleteListRepository) {
        this.bookDeleteListRepository = bookDeleteListRepository;
    }
}
