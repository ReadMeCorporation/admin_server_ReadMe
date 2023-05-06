package shop.readmecorp.adminserverreadme.modules.review.service;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import shop.readmecorp.adminserverreadme.modules.book.enums.BookStatus;
import shop.readmecorp.adminserverreadme.modules.review.dto.ReviewDTO;
import shop.readmecorp.adminserverreadme.modules.review.entity.Review;
import shop.readmecorp.adminserverreadme.modules.review.enums.ReviewStatus;
import shop.readmecorp.adminserverreadme.modules.review.repository.ReviewRepository;

import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
public class ReviewService {

    private final ReviewRepository reviewRepository;
    private final ObjectMapper objectMapper;

    public ReviewService(ReviewRepository reviewRepository, ObjectMapper objectMapper) {
        this.reviewRepository = reviewRepository;
        this.objectMapper = objectMapper;
    }

    public Page<Review> getPage(Pageable pageable) {
        return reviewRepository.findAll(pageable);
    }


    public PageImpl<?> getReviewsDeleteRequest(Pageable pageable) {

        Page<Review> page = reviewRepository.findAll(pageable);
        List<ReviewDTO> content = page.getContent()
                .stream()
                .filter(review -> review.getStatus().equals(ReviewStatus.WAIT))
                .map(Review::toDTO)
                .collect(Collectors.toList());

        return new PageImpl<>(content, pageable, page.getTotalElements());
    }

    public PageImpl<?> getPublishersReviewList(Integer publisherId, Pageable pageable) {

        Page<Review> page = reviewRepository.findByPublisherId(publisherId, pageable);
        List<ReviewDTO> content = page.getContent()
                .stream()
                .map(Review::toDTO)
                .collect(Collectors.toList());

        return new PageImpl<>(content, pageable, page.getTotalElements());
    }

    public Optional<Review> getReview(Integer id) {
        return reviewRepository.findById(id);
    }

    @Transactional
    public Review updateState(String status, Review review) throws Exception {
        Map<String, Object> jsonData = objectMapper.readValue(status, new TypeReference<Map<String, Object>>() {});
        String reviewStatus = jsonData.get("status").toString();
        // 리뷰 상태 변경
        review.setStatus(ReviewStatus.valueOf(reviewStatus));
        return reviewRepository.save(review);
    }

}
