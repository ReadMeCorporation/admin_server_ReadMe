package shop.readmecorp.adminserverreadme.modules.claim.controller;

import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import shop.readmecorp.adminserverreadme.modules.ResponseDTO;
import shop.readmecorp.adminserverreadme.modules.claim.request.QuestionSaveRequest;
import shop.readmecorp.adminserverreadme.modules.claim.service.QuestionService;

@RestController
public class QuestionController {

    private final QuestionService questionService;

    public QuestionController(QuestionService questionService) {
        this.questionService = questionService;
    }

    // 전체 문의 조회
    @GetMapping("/api/questions")
    public ResponseEntity<?> getPage(Pageable pageable){
         return ResponseEntity.ok(new ResponseDTO<>(1, "전체 문의 조회 성공", questionService.getPage(pageable)));
    }

    // 문의 조회 한건 ( 도서 id )
    @GetMapping("/api/questions/{id}")
    public ResponseEntity<?> getQuestion(@PathVariable Integer id) {

        return ResponseEntity.ok(new ResponseDTO<>(1, "문의 조회 한건 성공", questionService.getQuestion(id)));
    }

    @GetMapping("/api/publishers/questions")
    public ResponseEntity<?> getPublisherQuestions(@RequestParam("publisherId") Integer publisherId, Pageable pageable){

        return ResponseEntity.ok(new ResponseDTO<>(1, "출판사 개인문의 조회 성공", questionService.getPublisherQuestions(publisherId,pageable)));
    }

    // 문의 등록
    @PostMapping("/question")
    public ResponseEntity<?> saveQuestion(QuestionSaveRequest request){
        return new ResponseEntity<>(new ResponseDTO<>(1, "문의 등록 성공", questionService.save(request)), HttpStatus.CREATED);
    }
}
