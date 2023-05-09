package shop.readmecorp.adminserverreadme.modules.banner.controller;

import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.*;
import shop.readmecorp.adminserverreadme.common.exception.Exception400;
import shop.readmecorp.adminserverreadme.modules.ResponseDTO;
import shop.readmecorp.adminserverreadme.modules.banner.BannerConst;
import shop.readmecorp.adminserverreadme.modules.banner.entity.Banner;
import shop.readmecorp.adminserverreadme.modules.banner.request.BannerSaveRequest;
import shop.readmecorp.adminserverreadme.modules.banner.response.BannerResponse;
import shop.readmecorp.adminserverreadme.modules.banner.service.BannerService;
import shop.readmecorp.adminserverreadme.util.AccountRoleValidator;

import java.util.Optional;


@Controller
public class BannerController {

    private final BannerService bannerService;
    private final AccountRoleValidator roleValidator;

    public BannerController(BannerService bannerService, AccountRoleValidator roleValidator) {
        this.bannerService = bannerService;
        this.roleValidator = roleValidator;
    }

    // 전체 배너 리스트 조회
    @GetMapping("/api/banners")
    public ResponseEntity<?> getBanners(Pageable pageable){
        return ResponseEntity.ok(new ResponseDTO<>(1, "전체 배너 리스트 조회 성공", bannerService.getBanners(pageable)));
    }

    // 배너 등록
    @PostMapping("/banners")
    public ResponseEntity<?> saveBanner(BannerSaveRequest request, Errors error) {
        if (error.hasErrors()) {
            throw new Exception400(error.getAllErrors().get(0).getDefaultMessage());
        }
        // 권한체크 (어드민계정인지)
        roleValidator.validateAdminRole();
        return new ResponseEntity<>(new ResponseDTO<>(1, "공지등록 성공", bannerService.save(request)), HttpStatus.CREATED);
    }

    // 배너 상태 변경
    @PutMapping("/banners/{id}/state")
    public ResponseEntity<BannerResponse> updateBannerStatus(@PathVariable Integer id, @RequestBody String status) throws Exception {
        Optional<Banner> optionalBanner = bannerService.getBanner(id);
        if (optionalBanner.isEmpty()) {
            throw new Exception400(BannerConst.notFound);
        }
        // 권한체크 (어드민계정인지)
        roleValidator.validateAdminRole();
        Banner update = bannerService.updateState(status, optionalBanner.get());
        return ResponseEntity.ok(update.toResponse());
    }

    @GetMapping("/admins/banners")
    public String adminsBanner(){
        // 권한체크 (어드민계정인지)
        roleValidator.validateAdminRole();
        return "/admin/bannermanage/bannerList";
    }

    @GetMapping("/admins/banners/saveForm")
    public String adminsbannsersaveForm(){
        // 권한체크 (어드민계정인지)
        roleValidator.validateAdminRole();
        return "/admin/bannermanage/bannerSaveForm";
    }
}
