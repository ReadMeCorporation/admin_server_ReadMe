package shop.readmecorp.adminserverreadme.modules.review.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import shop.readmecorp.adminserverreadme.modules.review.service.ReviewService;

@Controller
public class ReviewController {

    private final ReviewService reviewService;

    public ReviewController(ReviewService reviewService) {
        this.reviewService = reviewService;
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
