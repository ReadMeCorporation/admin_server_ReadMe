package shop.readmecorp.adminserverreadme.modules.book.controller;

import org.springframework.stereotype.Controller;
import shop.readmecorp.adminserverreadme.modules.book.service.BookService;

@Controller
public class BookController {

    private final BookService bookService;

    public BookController(BookService bookService) {
        this.bookService = bookService;
    }
}