package shop.readmecorp.adminserverreadme.modules.bookdeletelist.controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;
import shop.readmecorp.adminserverreadme.common.exception.Exception400;
import shop.readmecorp.adminserverreadme.modules.ResponseDTO;
import shop.readmecorp.adminserverreadme.modules.bookdeletelist.request.BookDeleteListSaveRequest;
import shop.readmecorp.adminserverreadme.modules.bookdeletelist.service.BookDeleteListService;

import javax.validation.Valid;

@RestController
public class BookDeleteListController {

    private final BookDeleteListService bookDeleteListService;

    public BookDeleteListController(BookDeleteListService bookDeleteListService) {
        this.bookDeleteListService = bookDeleteListService;
    }

    @PostMapping("/bookDeleteList/{id}")
    public ResponseEntity<?> saveBookDeleteList(
            @Valid @RequestBody BookDeleteListSaveRequest request, @PathVariable("id") Integer bookId,
            Errors error) {
        if (error.hasErrors()) {
            throw new Exception400(error.getAllErrors().get(0).getDefaultMessage());
        }
        return new ResponseEntity<>(new ResponseDTO<>(1, "도서 삭제 요청 성공", bookDeleteListService.save(request, bookId)), HttpStatus.CREATED);
    }
}
