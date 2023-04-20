package shop.readmecorp.adminserverreadme.modules.book.controller;

import org.springframework.web.bind.annotation.RestController;
import shop.readmecorp.adminserverreadme.modules.book.service.BookService;

@RestController
public class BookController {

    private final BookService bookService;

    public BookController(BookService bookService) {
        this.bookService = bookService;
    }
}
