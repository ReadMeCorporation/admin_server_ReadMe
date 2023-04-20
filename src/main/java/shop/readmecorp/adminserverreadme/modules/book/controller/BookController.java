package shop.readmecorp.adminserverreadme.modules.book.controller;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.Pageable;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.*;
import shop.readmecorp.adminserverreadme.common.exception.Exception400;
import shop.readmecorp.adminserverreadme.modules.book.BookConst;
import shop.readmecorp.adminserverreadme.modules.book.dto.BookDTO;
import shop.readmecorp.adminserverreadme.modules.book.entity.Book;
import shop.readmecorp.adminserverreadme.modules.book.request.BookSaveRequest;
import shop.readmecorp.adminserverreadme.modules.book.request.BookUpdateRequest;
import shop.readmecorp.adminserverreadme.modules.book.response.BookResponse;
import shop.readmecorp.adminserverreadme.modules.book.service.BookService;

import javax.validation.Valid;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Controller
public class BookController {

    private final BookService bookService;

    public BookController(BookService bookService) {
        this.bookService = bookService;
    }

    @GetMapping("/books")
    public ResponseEntity<Page<BookDTO>> getPage(Pageable pageable) {
        Page<Book> page = bookService.getPage(pageable);
        List<BookDTO> content = page.getContent()
                .stream()
                .map(Book::toDTO)
                .collect(Collectors.toList());

        return ResponseEntity.ok(new PageImpl<>(content, pageable, page.getTotalElements()));
    }

    @GetMapping("/books/{id}")
    public ResponseEntity<BookResponse> getBook(@PathVariable Integer id) {
        var optionalBook = bookService.getBook(id);
        if (optionalBook.isEmpty()) {
            throw new Exception400(BookConst.notFound);
        }

        return ResponseEntity.ok(optionalBook.get().toResponse());
    }

    @PostMapping("/books")
    public ResponseEntity<BookResponse> saveBook(
            @Valid @RequestBody BookSaveRequest request,
            Errors error) {
        if (error.hasErrors()) {
            throw new Exception400(error.getAllErrors().get(0).getDefaultMessage());
        }

        Book save = bookService.save(request);

        return ResponseEntity.ok(save.toResponse());
    }

    @PutMapping("/books/{id}")
    public ResponseEntity<BookResponse> updateBook(
            @PathVariable Integer id,
            @Valid @RequestBody BookUpdateRequest request,
            Errors error
    ) {
        if (error.hasErrors()) {
            throw new Exception400(error.getAllErrors().get(0).getDefaultMessage());
        }

        Optional<Book> optionalBook = bookService.getBook(id);
        if (optionalBook.isEmpty()) {
            throw new Exception400(BookConst.notFound);
        }

        Book update = bookService.update(request, optionalBook.get());
        return ResponseEntity.ok(update.toResponse());
    }

    @DeleteMapping("/books/{id}")
    public ResponseEntity<String> delete(@PathVariable Integer id) {
        Optional<Book> optionalBook = bookService.getBook(id);
        if (optionalBook.isEmpty()) {
            throw new Exception400(BookConst.notFound);
        }

        bookService.delete(optionalBook.get());

        return ResponseEntity.ok("삭제가 완료되었습니다.");
    }

    @GetMapping("/admins/books")
    public String adminsBookList(){
        return "/admin/bookmanage/bookList";
    }

    @GetMapping("/admins/books/detail/{id}")
    public String adminsBookDetail(@PathVariable Integer id){ return "/admin/bookmanage/bookDetail"; }

    @GetMapping("/publishers/books")
    public String publishersBookList(){
        return "/publisher/bookmanage/bookList";
    }

    @GetMapping("/publishers/books/detail/{id}")
    public String publishersBookDetail(@PathVariable Integer id){
        return "/publisher/bookmanage/bookDetail";
    }

    @GetMapping("/publishers/books/saveForm")
    public String publishersSaveForm(){
        return "/publisher/bookmanage/bookSaveForm";
    }

    @GetMapping("/publishers/books/Stay")
    public String publishersBookStay(){
        return "/publisher/bookmanage/bookStay";
    }

    @GetMapping("/publishers/books/updateForm/{id}")
    public String publishersBookUpdateForm(@PathVariable Integer id){
        return "/publisher/bookmanage/bookUpdateForm";
    }

    @GetMapping("/publishers/books/deleteForm/{id}")
    public String publisherBookDeleteForm(@PathVariable Integer id){
        return "/publisher/bookmanage/bookDeleteForm";
    }
}