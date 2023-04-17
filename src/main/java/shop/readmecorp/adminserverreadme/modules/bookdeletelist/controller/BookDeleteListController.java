package shop.readmecorp.adminserverreadme.modules.bookdeletelist.controller;

import org.springframework.web.bind.annotation.RestController;
import shop.readmecorp.adminserverreadme.modules.bookdeletelist.service.BookDeleteListService;

@RestController
public class BookDeleteListController {

    private final BookDeleteListService bookDeleteListService;

    public BookDeleteListController(BookDeleteListService bookDeleteListService) {
        this.bookDeleteListService = bookDeleteListService;
    }
}
