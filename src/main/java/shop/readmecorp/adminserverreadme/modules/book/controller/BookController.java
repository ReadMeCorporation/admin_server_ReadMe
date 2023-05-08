package shop.readmecorp.adminserverreadme.modules.book.controller;

import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.*;
import shop.readmecorp.adminserverreadme.common.exception.CustomException;
import shop.readmecorp.adminserverreadme.common.exception.Exception400;
import shop.readmecorp.adminserverreadme.modules.ResponseDTO;
import shop.readmecorp.adminserverreadme.modules.book.BookConst;
import shop.readmecorp.adminserverreadme.modules.book.entity.Book;
import shop.readmecorp.adminserverreadme.modules.book.request.BookSaveRequest;
import shop.readmecorp.adminserverreadme.modules.book.response.BookResponse;
import shop.readmecorp.adminserverreadme.modules.book.service.BookService;
import shop.readmecorp.adminserverreadme.modules.bookdeletelist.response.BookDeleteListResponse;
import shop.readmecorp.adminserverreadme.modules.bookupdatelist.response.BookUpdateListResponse;
import shop.readmecorp.adminserverreadme.modules.publisher.entity.Publisher;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.util.Optional;

@Controller
public class BookController {

    private final BookService bookService;
    private final HttpSession session;


    public BookController(BookService bookService, HttpSession session) {
        this.bookService = bookService;
        this.session = session;
    }

    // 전체 도서 리스트 조회 (ACTIVE)
    @GetMapping("/api/books")
    public ResponseEntity<?> getBookListActive(Pageable pageable) {
        return ResponseEntity.ok(new ResponseDTO<>(1, "전체 도서 리스트 조회 성공", bookService.getBookListActive(pageable)));
    }

    // 도서 조회 한건 ( 도서 id )
    @GetMapping("/api/books/{id}")
    public ResponseEntity<?> getBookWithBookCover(@PathVariable Integer id) {

        return ResponseEntity.ok(new ResponseDTO<>(1, "도서 조회 성공", bookService.getBookWithBookCover(id)));
    }

    // 도서 조회한건 (표지없고 책테이블만)
    @GetMapping("/{id}")
    public ResponseEntity<BookResponse> getBook (@PathVariable Integer id) {
        var optionalBook = bookService.getBook(id);
        if (optionalBook.isEmpty()) {
            throw new Exception400(BookConst.notFound);
        }

        return ResponseEntity.ok(
                optionalBook.get().toResponse()
        );
    }

    // 도서 리스트 조회 (ACTIVE, DELETE)
    @GetMapping("/api/books/activeOrDelete")
    public ResponseEntity<?> getBookListActiveOrDelete(Pageable pageable) {
        return ResponseEntity.ok(new ResponseDTO<>(1, "도서 리스트 조회(ACTIVE, DELETE) 성공", bookService.getBookListActiveOrDelete(pageable)));
    }

    // 도서 리스트 조회 (해당 출판사도서만)
    @GetMapping("/api/publishers/books")
    public ResponseEntity<?> getPublishersBookList(Integer publisherId, Pageable pageable) {
        return ResponseEntity.ok(bookService.getPublishersBookList(publisherId, pageable));
    }

    // 도서 대기 (출판사에서 사용)
    @GetMapping("/api/publishers/books/request")
    public ResponseEntity<?> getPublishersBookListRequest(Integer publisherId, Pageable pageable) {
        return ResponseEntity.ok(bookService.getPublishersBookRequest(publisherId, pageable));
    }


    // 도서 신규승인 조회(어드민에서 사용)
    @GetMapping("/api/books/saveList")
    public ResponseEntity<?> getBookSaveList(Pageable pageable) {
        return ResponseEntity.ok(new ResponseDTO<>(1, "도서 신규승인 조회 성공", bookService.getBookSaveList(pageable)));
    }

    // 도서 수정&삭제 요청목록 조회 (어드민에서 사용)
    @GetMapping("/api/books/updateListAndDeleteList")
    public ResponseEntity<?> getBookUpdateAndDeleteList(Pageable pageable) {
        return ResponseEntity.ok(new ResponseDTO<>(1, "도서 수정&삭제 요청목록 조회 성공", bookService.getBookUpdateAndDeleteList(pageable)));
    }

    // 도서 수정 요청화면 (어드민에서 사용)
    @GetMapping("/api/books/updateRequest/{id}")
    public ResponseEntity<BookUpdateListResponse> getBookUpdateRequest(@PathVariable Integer id) {
        return ResponseEntity.ok(bookService.getBookUpdateRequest(id));
    }

    // 도서 삭제 요청화면 (어드민에서 사용)
    @GetMapping("/api/books/deleteRequest/{id}")
    public ResponseEntity<BookDeleteListResponse> getBookDeleteRequest(@PathVariable Integer id) {
        return ResponseEntity.ok(bookService.getBookDeleteRequest(id));
    }

    // 도서 등록
    @PostMapping("/books")
    public ResponseEntity<?> saveBook(
            @Valid BookSaveRequest request,
            Errors error) {
        // TODO Validation 체크 필요
        if (error.hasErrors()) {
            throw new Exception400(error.getAllErrors().get(0).getDefaultMessage());
        }

        return new ResponseEntity<>(new ResponseDTO<>(1, "도서 등록 요청 성공", bookService.save(request)), HttpStatus.CREATED);
    }

    // 도서 수정 승인 (어드민에서 사용)
    @PutMapping("/books/{id}")
    public ResponseEntity<?> updateBook(@PathVariable Integer id) {

        return new ResponseEntity<>(new ResponseDTO<>(1, "도서 수정 성공", bookService.update(id)), HttpStatus.CREATED);
    }

    // 도서 삭제 승인
    @PutMapping("/books/{id}/delete")
    public ResponseEntity<BookResponse> deleteBook(
            @PathVariable Integer id,
            @RequestBody String status
    ) throws Exception {
        Book update = bookService.deleteBook(status, id);
        return ResponseEntity.ok(update.toResponse());
    }

    // 도서 상태 변경
    @PutMapping("/books/{id}/state")
    public ResponseEntity<BookResponse> updateBookState(
            @PathVariable Integer id,
            @RequestBody String status
    ) throws Exception {
        Optional<Book> optionalBook = bookService.getBook(id);
        if (optionalBook.isEmpty()) {
            throw new Exception400(BookConst.notFound);
        }
        Book update = bookService.updateState(status, optionalBook.get());
        return ResponseEntity.ok(update.toResponse());
    }

    @GetMapping("/admins/books")
    public String adminsBookList(){
        Object principal = session.getAttribute("principal");
        String userRole = (String) session.getAttribute("userRole");
        if (principal == null) {
            throw new CustomException("로그인을 해주세요");
        }
        if (!"admin".equals(userRole)) {
            throw new CustomException("관리자 권한이 필요합니다");
        }

        return "/admin/bookmanage/bookList";
    }

    @GetMapping("/admins/books/saveList")
    public String adminsBookSaveList(){
        Object principal = session.getAttribute("principal");
        String userRole = (String) session.getAttribute("userRole");
        if (principal == null) {
            throw new CustomException("로그인을 해주세요");
        }
        if (!"admin".equals(userRole)) {
            throw new CustomException("관리자 권한이 필요합니다");
        }
        
        return "/admin/bookmanage/bookSaveList";
    }

    @GetMapping("/admins/books/bookUpdateAndDeleteList")
    public String adminsBookUpdateAndDeleteList(){
        Object principal = session.getAttribute("principal");
        String userRole = (String) session.getAttribute("userRole");
        if (principal == null) {
            throw new CustomException("로그인을 해주세요");
        }
        if (!"admin".equals(userRole)) {
            throw new CustomException("관리자 권한이 필요합니다");
        }
        
        return "/admin/bookmanage/bookUpdateAndDeleteList";
    }

    @GetMapping("/admins/books/bookUpdateRequest/{id}")
    public String adminsBookUpdateList(@PathVariable Integer id){
        Object principal = session.getAttribute("principal");
        String userRole = (String) session.getAttribute("userRole");
        if (principal == null) {
            throw new CustomException("로그인을 해주세요");
        }
        if (!"admin".equals(userRole)) {
            throw new CustomException("관리자 권한이 필요합니다");
        }
        
        return "/admin/bookmanage/bookUpdateRequest";
    }

    @GetMapping("/admins/books/bookDeleteRequest/{id}")
    public String adminsBookDeleteList(@PathVariable Integer id){
        Object principal = session.getAttribute("principal");
        String userRole = (String) session.getAttribute("userRole");
        if (principal == null) {
            throw new CustomException("로그인을 해주세요");
        }
        if (!"admin".equals(userRole)) {
            throw new CustomException("관리자 권한이 필요합니다");
        }
        
        return "/admin/bookmanage/bookDeleteRequest";
    }

    @GetMapping("/admins/books/detail/{id}")
    public String adminsBookDetail(@PathVariable Integer id){
        Object principal = session.getAttribute("principal");
        String userRole = (String) session.getAttribute("userRole");
        if (principal == null) {
            throw new CustomException("로그인을 해주세요");
        }
        if (!"admin".equals(userRole)) {
            throw new CustomException("관리자 권한이 필요합니다");
        }
        
        return "/admin/bookmanage/bookDetail"; 
    }

    @GetMapping("/publishers/books")
    public String publishersBookList(){
        Object principal = session.getAttribute("principal");
        String userRole = (String) session.getAttribute("userRole");
        if (principal == null) {
            throw new CustomException("로그인을 해주세요");
        }
        if (!"publisher".equals(userRole)) {
            throw new CustomException("출판사 계정이 아닙니다");
        }
        
        return "/publisher/bookmanage/bookList";
    }

    @GetMapping("/publishers/books/detail/{id}")
    public String publishersBookDetail(@PathVariable Integer id){
        Object principal = session.getAttribute("principal");
        String userRole = (String) session.getAttribute("userRole");
        if (principal == null) {
            throw new CustomException("로그인을 해주세요");
        }
        if (!"publisher".equals(userRole)) {
            throw new CustomException("출판사 계정이 아닙니다");
        }
        
        return "/publisher/bookmanage/bookDetail";
    }

    @GetMapping("/publishers/books/saveForm")
    public String publishersSaveForm(){
        Object principal = session.getAttribute("principal");
        String userRole = (String) session.getAttribute("userRole");
        if (principal == null) {
            throw new CustomException("로그인을 해주세요");
        }
        if (!"publisher".equals(userRole)) {
            throw new CustomException("출판사 계정이 아닙니다");
        }

        return "/publisher/bookmanage/bookSaveForm";
    }

    @GetMapping("/publishers/books/stay")
    public String publishersBookStay(){
        Object principal = session.getAttribute("principal");
        String userRole = (String) session.getAttribute("userRole");
        if (principal == null) {
            throw new CustomException("로그인을 해주세요");
        }
        if (!"publisher".equals(userRole)) {
            throw new CustomException("출판사 계정이 아닙니다");
        }

        return "/publisher/bookmanage/bookStay";
    }

    @GetMapping("/publishers/books/updateForm/{id}")
    public String publishersBookUpdateForm(@PathVariable Integer id){
        Object principal = session.getAttribute("principal");
        String userRole = (String) session.getAttribute("userRole");
        if (principal == null) {
            throw new CustomException("로그인을 해주세요");
        }
        if (!"publisher".equals(userRole)) {
            throw new CustomException("출판사 계정이 아닙니다");
        }

        return "/publisher/bookmanage/bookUpdateForm";
    }

    @GetMapping("/publishers/books/deleteForm/{id}")
    public String publisherBookDeleteForm(@PathVariable Integer id){
        Object principal = session.getAttribute("principal");
        String userRole = (String) session.getAttribute("userRole");
        if (principal == null) {
            throw new CustomException("로그인을 해주세요");
        }
        if (!"publisher".equals(userRole)) {
            throw new CustomException("출판사 계정이 아닙니다");
        }

        return "/publisher/bookmanage/bookDeleteForm";
    }
}