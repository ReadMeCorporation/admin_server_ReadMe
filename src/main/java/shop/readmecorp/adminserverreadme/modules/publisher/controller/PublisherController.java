package shop.readmecorp.adminserverreadme.modules.publisher.controller;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import shop.readmecorp.adminserverreadme.common.exception.CustomException;
import shop.readmecorp.adminserverreadme.common.exception.Exception400;
import shop.readmecorp.adminserverreadme.modules.publisher.PublisherConst;
import shop.readmecorp.adminserverreadme.modules.publisher.dto.PublisherDTO;
import shop.readmecorp.adminserverreadme.modules.publisher.entity.Publisher;
import shop.readmecorp.adminserverreadme.modules.publisher.request.PublisherLoginRequest;
import shop.readmecorp.adminserverreadme.modules.publisher.request.PublisherSaveRequest;
import shop.readmecorp.adminserverreadme.modules.publisher.request.PublisherUpdateRequest;
import shop.readmecorp.adminserverreadme.modules.publisher.response.PublisherResponse;
import shop.readmecorp.adminserverreadme.modules.publisher.service.PublisherService;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.util.List;
import java.util.stream.Collectors;

@Controller
@RequestMapping
public class PublisherController {

    private final PublisherService publisherService;
    private final HttpSession session;

    public PublisherController(PublisherService publisherService, HttpSession session) {
        this.publisherService = publisherService;
        this.session = session;
    }

    @GetMapping("/api/publishers")
    public ResponseEntity<Page<PublisherDTO>> getPublisherList(Pageable pageable) {
        Page<Publisher> page = publisherService.getPublisherList(pageable);
        List<PublisherDTO> content = page.getContent()
                .stream()
                .map(Publisher::toDTO)
                .collect(Collectors.toList());

        return ResponseEntity.ok(new PageImpl<>(content, pageable, page.getTotalElements()));
    }

    @GetMapping("/api/publishers/request")
    public ResponseEntity<Page<PublisherDTO>> getPublisherRequest(Pageable pageable) {
        Page<Publisher> page = publisherService.getPublisherRequest(pageable);
        List<PublisherDTO> content = page.getContent()
                .stream()
                .map(Publisher::toDTO)
                .collect(Collectors.toList());

        return ResponseEntity.ok(new PageImpl<>(content, pageable, page.getTotalElements()));
    }

    @GetMapping("/api/publishers/{id}")
    public ResponseEntity<PublisherResponse> getPublisher (@PathVariable Integer id) {
        var optionalPublisher = publisherService.getPublisher(id);
        if (optionalPublisher.isEmpty()) {
            throw new Exception400(PublisherConst.notFound);
        }

        return ResponseEntity.ok(
                optionalPublisher.get().toResponse()
        );
    }

    @PutMapping("/publishers/{id}")
    public ResponseEntity<PublisherResponse> updateState (
            @Valid @RequestBody PublisherUpdateRequest request,
            Errors error,
            @PathVariable Integer id
    ) {
        if (error.hasErrors()) {
            throw new Exception400(error.getAllErrors().get(0).getDefaultMessage());
        }

        var optionalPublisher = publisherService.getPublisher(id);
        if (optionalPublisher.isEmpty()) {
            throw new Exception400(PublisherConst.notFound);
        }

        var publisher = publisherService.updateState(request, optionalPublisher.get());
        return ResponseEntity.ok(publisher.toResponse());
    }


    @GetMapping("/publishers/joinForm")
    public String joinForm(){
        return "/publisher/account/joinForm";
    }

    @GetMapping("/publishers/loginForm")
    public String loginForm(){
        return "/publisher/account/loginForm";
    }

    @PostMapping("/publishers/join")
    public String join(@Valid PublisherSaveRequest request, Errors error, RedirectAttributes redirectAttributes){

        if (error.hasErrors()) {
            throw new CustomException(error.getAllErrors().get(0).getDefaultMessage(), HttpStatus.BAD_REQUEST);
        }

        // 회원가입 하기
        publisherService.join(request);

        // 리다이렉트 시 메시지 추가
        redirectAttributes.addFlashAttribute("message", "회원가입 신청이 완료되었습니다.");

        return "redirect:/publishers/loginForm";
    }

    @PostMapping("/publishers/login")
    public String login(@Valid PublisherLoginRequest request, Errors error){

        if (error.hasErrors()) {
            throw new CustomException(error.getAllErrors().get(0).getDefaultMessage(), HttpStatus.BAD_REQUEST);
        }

        // 로그인 하기
        Publisher principal = publisherService.login(request);

        // 세션에 저장
        session.setAttribute("principal",principal);
        session.setAttribute("userRole", "publisher");

        // 유효성 검사
        if(session.getAttribute("principal") == null){
            throw new CustomException("존재하지 않는 아이디거나 비밀번호를 다시 확인해주시기 바랍니다.");
        }

        return "redirect:/publishers/books";
    }

    @DeleteMapping("/publishers/{id}")
    public ResponseEntity<String> deletePublisher (
            @PathVariable Integer id
    ) {
        var optionalPublisher = publisherService.getPublisher(id);
        if (optionalPublisher.isEmpty()) {
            throw new Exception400(PublisherConst.notFound);
        }

        publisherService.delete(optionalPublisher.get());

        return ResponseEntity.ok("삭제가 완료되었습니다.");
    }

}
