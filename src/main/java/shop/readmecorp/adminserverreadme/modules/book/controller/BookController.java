package shop.readmecorp.adminserverreadme.modules.book.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import shop.readmecorp.adminserverreadme.modules.book.service.BookService;

@Controller
@RequestMapping("/books")
public class BookController {

    private final BookService bookService;

    public BookController(BookService bookService) {
        this.bookService = bookService;
    }

    @GetMapping
    public String bookList(){
        return "/bookmanage/bookList";
    }

    @GetMapping("/saveForm")
    public String book(){
        return "/bookmanage/bookSaveForm";
    }

//    @PostMapping("/save")
//    public ResponseEntity<?> save(){
//
//    }
}