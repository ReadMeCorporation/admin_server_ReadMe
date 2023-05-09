package shop.readmecorp.adminserverreadme.modules.notice.controller;

import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.*;
import shop.readmecorp.adminserverreadme.common.exception.Exception400;
import shop.readmecorp.adminserverreadme.modules.ResponseDTO;
import shop.readmecorp.adminserverreadme.modules.notice.NoticeConst;
import shop.readmecorp.adminserverreadme.modules.notice.entity.Notice;
import shop.readmecorp.adminserverreadme.modules.notice.request.NoticeSaveRequest;
import shop.readmecorp.adminserverreadme.modules.notice.response.NoticeResponse;
import shop.readmecorp.adminserverreadme.modules.notice.service.NoticeService;
import shop.readmecorp.adminserverreadme.util.AccountRoleValidator;

import javax.validation.Valid;
import java.util.Optional;


@Controller
public class NoticeController {

    private final NoticeService noticeService;
    private final AccountRoleValidator roleValidator;

    public NoticeController(NoticeService noticeService, AccountRoleValidator roleValidator) {
        this.noticeService = noticeService;
        this.roleValidator = roleValidator;
    }

    // 전체 공지 리스트 조회
    @GetMapping("/api/notices")
    public ResponseEntity<?> getNotices(Pageable pageable){
        return ResponseEntity.ok(new ResponseDTO<>(1, "전체 공지 리스트 조회 성공", noticeService.getNotices(pageable)));
    }

    // 공지 한건 조회 (이미지 포함)
    @GetMapping("/api/notices/{id}")
    public ResponseEntity<?> getNoticeWithImage(@PathVariable Integer id){
        return ResponseEntity.ok(new ResponseDTO<>(1, "공지 조회 성공", noticeService.getNoticeWithImage(id)));
    }

    // 공지 등록
    @PostMapping("/notices")
    public ResponseEntity<?> saveNotice(@Valid NoticeSaveRequest request,Errors error) {
        if (error.hasErrors()) {
            throw new Exception400(error.getAllErrors().get(0).getDefaultMessage());
        }
        return new ResponseEntity<>(new ResponseDTO<>(1, "공지등록 성공", noticeService.save(request)), HttpStatus.CREATED);
    }

    // 공지 상태 변경
    @PutMapping("/notices/{id}/state")
    public ResponseEntity<NoticeResponse> updateNoticeStatus(@PathVariable Integer id,@RequestBody String status) throws Exception {
        Optional<Notice> optionalNotice = noticeService.getNotice(id);
        if (optionalNotice.isEmpty()) {
            throw new Exception400(NoticeConst.notFound);
        }
        Notice update = noticeService.updateState(status, optionalNotice.get());
        return ResponseEntity.ok(update.toResponse());
    }

    @GetMapping("/admins/notices")
    public String adminsNotice(){
        // 권한체크 (어드민계정인지)
        roleValidator.validateAdminRole();
        return "/admin/noticemanage/noticeList";
    }

    @GetMapping("/admins/notices/saveForm")
    public String adminsNoticeSaveForm(){
        // 권한체크 (어드민계정인지)
        roleValidator.validateAdminRole();
        return "/admin/noticemanage/noticeSaveForm";
    }

    @GetMapping("/admins/notices/detail/{id}")
    public String adminsNoticeDetail(@PathVariable Integer id){
        // 권한체크 (어드민계정인지)
        roleValidator.validateAdminRole();
        return "/admin/noticemanage/noticeDetail";
    }


}
