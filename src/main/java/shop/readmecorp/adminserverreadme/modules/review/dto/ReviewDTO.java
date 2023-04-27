package shop.readmecorp.adminserverreadme.modules.review.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import shop.readmecorp.adminserverreadme.modules.book.dto.BookDTO;
import shop.readmecorp.adminserverreadme.modules.review.entity.Review;
import shop.readmecorp.adminserverreadme.modules.user.dto.UserDTO;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class ReviewDTO {
    private Integer id;

    private UserDTO user;

    private BookDTO book;

    private Double stars;

    private String content;

    private String status;

    public ReviewDTO(Review review) {
        this.id = review.getId();
        this.user = review.getUser().toDTO();
        this.book = review.getBook().toDTO();
        this.stars = review.getStars();
        this.content = review.getContent();
        this.status = review.getStatus().name();
    }
}
