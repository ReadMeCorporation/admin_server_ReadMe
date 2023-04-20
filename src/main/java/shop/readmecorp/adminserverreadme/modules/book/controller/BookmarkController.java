package shop.readmecorp.adminserverreadme.modules.book.controller;

import org.springframework.web.bind.annotation.RestController;
import shop.readmecorp.adminserverreadme.modules.book.service.BookmarkService;

@RestController
public class BookmarkController {

    private final BookmarkService bookmartService;

    public BookmarkController(BookmarkService bookmartService) {
        this.bookmartService = bookmartService;
    }
}
