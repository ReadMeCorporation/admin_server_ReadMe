package shop.readmecorp.adminserverreadme.modules.publisher.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import shop.readmecorp.adminserverreadme.common.exception.CustomException;
import shop.readmecorp.adminserverreadme.modules.publisher.entity.Publisher;
import shop.readmecorp.adminserverreadme.modules.publisher.request.PublisherLoginRequest;
import shop.readmecorp.adminserverreadme.modules.publisher.request.PublisherSaveRequest;
import shop.readmecorp.adminserverreadme.modules.publisher.service.PublisherService;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/publishers")
public class PublisherController {

    private final PublisherService publisherService;
    private final HttpSession session;

    public PublisherController(PublisherService publisherService, HttpSession session) {
        this.publisherService = publisherService;
        this.session = session;
    }


    @GetMapping("/joinForm")
    public String joinForm(){
        return "/publisher/account/joinForm";
    }

    @GetMapping("/loginForm")
    public String loginForm(){
        return "/publisher/account/loginForm";
    }

    @PostMapping("/join")
    public String join(@ModelAttribute PublisherSaveRequest request, RedirectAttributes redirectAttributes){
        if (request.getUsername().isEmpty() || request.getUsername() == null){
            throw new CustomException("아이디를 작성해주세요.");
        }
        if (request.getPassword().isEmpty() || request.getPassword() == null){
            throw new CustomException("비밀번호를 작성해주세요.");
        }
        if (request.getBusinessName().isEmpty() || request.getBusinessName() == null){
            throw new CustomException("사업자명을 작성해주세요.");
        }
        if (request.getBusinessNumber().isEmpty() || request.getBusinessNumber() == null){
            throw new CustomException("사업자번호를 작성해주세요.");
        }

        Publisher publisher = publisherService.join(request);

        // 리다이렉트 시 메시지 추가
        redirectAttributes.addFlashAttribute("message", "회원가입 신청이 완료되었습니다.");

        return "redirect:/publishers/loginForm";
    }

    @PostMapping("/login")
    public String login(@ModelAttribute PublisherLoginRequest request){
        if (request.getUsername().isEmpty() || request.getUsername() == null){
            throw new CustomException("아이디를 작성해주세요.");
        }
        if (request.getPassword().isEmpty() || request.getPassword() == null){
            throw new CustomException("비밀번호를 작성해주세요.");
        }


        // 로그인 하기
        Publisher principal = publisherService.login(request);

        // 세션에 저장
        session.setAttribute("principal",principal);

        // 유효성 검사
        if(session.getAttribute("principal") == null){
            throw new CustomException("존재하지 않는 아이디거나 비밀번호를 다시 확인해주시기 바랍니다.");
        }



        return "redirect:/publishers/books";
    }

}
