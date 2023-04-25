package shop.readmecorp.adminserverreadme.modules.review.controller;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.Pageable;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import shop.readmecorp.adminserverreadme.modules.review.dto.ReviewDTO;
import shop.readmecorp.adminserverreadme.modules.review.entity.Review;
import shop.readmecorp.adminserverreadme.modules.review.service.ReviewService;

import java.util.stream.Collectors;

@Controller
public class ReviewController {

    private final ReviewService reviewService;

    public ReviewController(ReviewService reviewService) {
        this.reviewService = reviewService;
    }

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

    @GetMapping("/publishers/reviews")
    public String publisherReview(){
        return"/publisher/reviewmanage/reviewList";
    }
    @GetMapping("/admins/reviews")
    public String adminReview(){
        return"/admin/reviewmanage/reviewList";
    }
}
