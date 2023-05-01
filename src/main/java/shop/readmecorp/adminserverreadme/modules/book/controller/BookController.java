package shop.readmecorp.adminserverreadme.modules.book.controller;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.*;
import shop.readmecorp.adminserverreadme.common.exception.Exception400;
import shop.readmecorp.adminserverreadme.modules.ResponseDto;
import shop.readmecorp.adminserverreadme.modules.book.BookConst;
import shop.readmecorp.adminserverreadme.modules.book.dto.AdminsBookUpdateAndDeleteListDTO;
import shop.readmecorp.adminserverreadme.modules.book.dto.BookDTO;
import shop.readmecorp.adminserverreadme.modules.book.dto.PublishersBookListDTO;
import shop.readmecorp.adminserverreadme.modules.book.entity.Book;
import shop.readmecorp.adminserverreadme.modules.book.request.BookSaveRequest;
import shop.readmecorp.adminserverreadme.modules.book.request.BookUpdateRequest;
import shop.readmecorp.adminserverreadme.modules.book.response.BookResponse;
import shop.readmecorp.adminserverreadme.modules.book.service.BookService;
import shop.readmecorp.adminserverreadme.modules.bookupdatelist.response.BookUpdateListResponse;

import javax.validation.Valid;
import java.util.List;
import java.util.Optional;

@Controller
public class BookController {

    private final BookService bookService;


    public BookController(BookService bookService) {
        this.bookService = bookService;
    }

    //책 정보 (ACTIVE)
    @GetMapping("/api/books")
    public ResponseEntity<Page<BookDTO>> getBookListActive(Pageable pageable) {
        return ResponseEntity.ok(bookService.getBookListActive(pageable));
    }

    //책 정보 (ACTIVE, DELETE)
    @GetMapping("/api/books/activeOrDelete")
    public ResponseEntity<Page<BookDTO>> getBookListActiveOrDelete(Pageable pageable) {
        return ResponseEntity.ok(bookService.getBookListActiveOrDelete(pageable));
    }

    //책 정보 + 별점평균 + 스크랩
    @GetMapping("/api/publishers/books")
    public ResponseEntity<List<PublishersBookListDTO>> getPublishersBookList(Integer publisherId) {
        return ResponseEntity.ok(bookService.getPublishersBookList(publisherId));
    }

    // 도서 대기 (출판사에서 사용)
    @GetMapping("/api/publishers/books/request")
    public ResponseEntity<List<BookDTO>> getPublishersBookListRequest(Integer publisherId) {
        return ResponseEntity.ok(bookService.getPublishersBookRequest(publisherId));
    }

    // 도서 신규승인 (어드민에서 사용)
    @GetMapping("/api/books/saveList")
    public ResponseEntity<Page<BookDTO>> getBookSaveList(Pageable pageable) {
        return ResponseEntity.ok(bookService.getBookSaveList(pageable));
    }
    // 도서 수정&삭제 요청목록 (어드민에서 사용)
    @GetMapping("/api/books/updateListAndDeleteList")
    public ResponseEntity<List<AdminsBookUpdateAndDeleteListDTO>> getBookUpdateAndDeleteList() {
        return ResponseEntity.ok(bookService.getBookUpdateAndDeleteList());
    }
    // 도서 수정 요청 (어드민에서 사용)
    @GetMapping("/api/books/updateRequest/{id}")
    public ResponseEntity<BookUpdateListResponse> getBookUpdateRequest(@PathVariable Integer id) {
        return ResponseEntity.ok(bookService.getBookUpdateRequest(id));
    }

    @GetMapping("/api/books/{id}")
    public ResponseEntity<BookResponse> getBookWithBookCover(@PathVariable Integer id) {
        return ResponseEntity.ok(bookService.getBookWithBookCover(id));
    }

    @PostMapping("/books")
    public ResponseEntity<?> saveBook(
            @Valid BookSaveRequest request,
            Errors error) {
        // TODO Validation 체크 필요
        if (error.hasErrors()) {
            throw new Exception400(error.getAllErrors().get(0).getDefaultMessage());
        }

        bookService.save(request);
        return new ResponseEntity<>(new ResponseDto<>(1, "도서 등록 요청 성공", null), HttpStatus.CREATED);
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

    @PutMapping("/books/{id}/state")
    public ResponseEntity<BookResponse> updateBookState(
            @PathVariable Integer id,
            @RequestBody String status,
            Errors error
    ) throws Exception {

        Optional<Book> optionalBook = bookService.getBook(id);
        if (optionalBook.isEmpty()) {
            throw new Exception400(BookConst.notFound);
        }

        Book update = bookService.updateState(status, optionalBook.get());
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

    @GetMapping("/admins/books/saveList")
    public String adminsBookSaveList(){
        return "/admin/bookmanage/bookSaveList";
    }

    @GetMapping("/admins/books/bookUpdateAndDeleteList")
    public String adminsBookUpdateAndDeleteList(){
        return "/admin/bookmanage/bookUpdateAndDeleteList";
    }

    @GetMapping("/admins/books/bookUpdateRequest/{id}")
    public String adminsBookUpdateList(@PathVariable Integer id){
        return "/admin/bookmanage/bookUpdateRequest";
    }

    @GetMapping("/admins/books/bookDeleteRequest/{id}")
    public String adminsBookDeleteList(@PathVariable Integer id){
        return "/admin/bookmanage/bookDeleteRequest";
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

    @GetMapping("/publishers/books/stay")
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