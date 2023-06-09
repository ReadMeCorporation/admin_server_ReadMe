package shop.readmecorp.adminserverreadme.modules.bookupdatelist.controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import shop.readmecorp.adminserverreadme.common.exception.Exception400;
import shop.readmecorp.adminserverreadme.modules.ResponseDTO;
import shop.readmecorp.adminserverreadme.modules.bookupdatelist.request.BookUpdateListSaveRequest;
import shop.readmecorp.adminserverreadme.modules.bookupdatelist.service.BookUpdateListService;

import javax.validation.Valid;

@RestController
public class BookUpdateListController {

    private final BookUpdateListService bookUpdateListService;

    public BookUpdateListController(BookUpdateListService bookUpdateListService) {
        this.bookUpdateListService = bookUpdateListService;
    }


    @PostMapping("/bookUpdateList/{id}")
    public ResponseEntity<?> saveBookUpdateList(
            @Valid BookUpdateListSaveRequest request, @PathVariable("id") Integer bookId,
            Errors error) {
        if (error.hasErrors()) {
            throw new Exception400(error.getAllErrors().get(0).getDefaultMessage());
        }
        return new ResponseEntity<>(new ResponseDTO<>(1, "도서 수정 요청 성공", bookUpdateListService.save(request, bookId)), HttpStatus.CREATED);
    }
}
