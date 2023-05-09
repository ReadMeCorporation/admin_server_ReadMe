package shop.readmecorp.adminserverreadme.modules.review.controller;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.Pageable;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import shop.readmecorp.adminserverreadme.common.exception.Exception400;
import shop.readmecorp.adminserverreadme.modules.ResponseDTO;
import shop.readmecorp.adminserverreadme.modules.review.ReviewConst;
import shop.readmecorp.adminserverreadme.modules.review.dto.ReviewDTO;
import shop.readmecorp.adminserverreadme.modules.review.entity.Review;
import shop.readmecorp.adminserverreadme.modules.review.response.ReviewResponse;
import shop.readmecorp.adminserverreadme.modules.review.service.ReviewService;
import shop.readmecorp.adminserverreadme.util.AccountRoleValidator;

import javax.servlet.http.HttpSession;
import java.util.Optional;
import java.util.stream.Collectors;

@Controller
public class ReviewController {

    private final ReviewService reviewService;
    private final HttpSession session;
    private final AccountRoleValidator roleValidator;

    public ReviewController(ReviewService reviewService, HttpSession session, AccountRoleValidator roleValidator) {
        this.reviewService = reviewService;
        this.session = session;
        this.roleValidator = roleValidator;
    }

    // 전체 리뷰 조회
    @GetMapping("/api/reviews")
    public ResponseEntity<Page<ReviewDTO>> getPage(Pageable pageable) {
        var page = reviewService.getPage(pageable);
        var content = page.getContent()
                .stream()
                .map(Review::toDTO)
                .collect(Collectors.toList());

        return ResponseEntity.ok(
                new PageImpl<>(content, pageable, page.getTotalElements())
        );
    }

    // 리뷰 삭제요청 리스트 조회
    @GetMapping("/api/reviews/request")
    public ResponseEntity<?> getReviewsDeleteRequest(Pageable pageable) {

        return ResponseEntity.ok(new ResponseDTO<>(1, "리뷰 삭제요청 리스트 조회 성공", reviewService.getReviewsDeleteRequest(pageable)));
    }

    // 리뷰 조회 (해당 출판사 만)
    @GetMapping("/api/publishers/reviews")
    public ResponseEntity<?> getPublishersReviewList(Integer publisherId, Pageable pageable) {
        return ResponseEntity.ok(reviewService.getPublishersReviewList(publisherId, pageable));
    }

    // 리뷰 조회 한건
    @GetMapping("/api/reviews/{id}")
    public ResponseEntity<ReviewResponse> getReview(@PathVariable Integer id){
        var optionalReview = reviewService.getReview(id);
        if (optionalReview.isEmpty()){
            throw new Exception400(ReviewConst.notFound);
        }

        return ResponseEntity.ok(optionalReview.get().toResponse());
    }

    // 리뷰 상태 변경
    @PutMapping("/reviews/{id}/state")
    public ResponseEntity<ReviewResponse> updateReviewState(
            @PathVariable Integer id,
            @RequestBody String status
    ) throws Exception {
        Optional<Review> optionalReview = reviewService.getReview(id);
        if (optionalReview.isEmpty()) {
            throw new Exception400(ReviewConst.notFound);
        }
        Review update = reviewService.updateState(status, optionalReview.get());
        return ResponseEntity.ok(update.toResponse());
    }
    
    
    
    
    @GetMapping("/publishers/reviews")
    public String publisherReviews(){
        // 권한체크 (출판사계정인지)
        roleValidator.validatePublisherRole();

        return"/publisher/reviewmanage/reviewList";
    }

    @GetMapping("/admins/reviews/request")
    public String adminReviewsDeleteRequest(){
        // 권한체크 (어드민계정인지)
        roleValidator.validateAdminRole();

        return"/admin/reviewmanage/reviewDeleteRequest";
    }

    @GetMapping("/admins/reviews")
    public String adminReviews(){
        // 권한체크 (어드민계정인지)
        roleValidator.validateAdminRole();

        return"/admin/reviewmanage/reviewList";
    }
}
