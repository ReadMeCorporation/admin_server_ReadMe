package shop.readmecorp.adminserverreadme.modules.claim.controller;

import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import shop.readmecorp.adminserverreadme.modules.ResponseDTO;
import shop.readmecorp.adminserverreadme.modules.claim.request.AnswerSaveRequest;
import shop.readmecorp.adminserverreadme.modules.claim.service.AnswerService;

@RestController
public class AnswerController {

    private final AnswerService answerService;

    public AnswerController(AnswerService answerService) {
        this.answerService = answerService;
    }

    // 전체 답변 조회
    @GetMapping("/api/answers")
    public ResponseEntity<?> getPage(Pageable pageable){
        return ResponseEntity.ok(new ResponseDTO<>(1, "전체 답변 조회 성공", answerService.getPage(pageable)));
    }

    // 답변 조회 한건 ( 도서 id )
    @GetMapping("/api/answers/{id}")
    public ResponseEntity<?> getAnswer(@PathVariable Integer id) {
        return ResponseEntity.ok(new ResponseDTO<>(1, "답변 조회 한건 성공", answerService.getAnswer(id)));
    }

    // 답변 등록
    @PostMapping("/answer")
    public ResponseEntity<?> saveQuestion(AnswerSaveRequest request){
        return new ResponseEntity<>(new ResponseDTO<>(1, "답변 등록 성공", answerService.save(request)), HttpStatus.CREATED);
    }
}
