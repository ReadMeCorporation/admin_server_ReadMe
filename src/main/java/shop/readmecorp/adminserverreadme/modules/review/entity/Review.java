package shop.readmecorp.adminserverreadme.modules.review.entity;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.hibernate.annotations.Comment;
import shop.readmecorp.adminserverreadme.common.jpa.BaseTime;
import shop.readmecorp.adminserverreadme.modules.book.entity.Book;
import shop.readmecorp.adminserverreadme.modules.review.dto.ReviewDTO;
import shop.readmecorp.adminserverreadme.modules.review.enums.ReviewStatus;
import shop.readmecorp.adminserverreadme.modules.review.response.ReviewResponse;
import shop.readmecorp.adminserverreadme.modules.user.entity.User;

import javax.persistence.*;

@Entity
@Getter
@Setter
@NoArgsConstructor
@Table(name = "REVIEW_TB")
public class Review extends BaseTime {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Comment("고유번호")
    private Integer id;

    @Comment("리뷰 작성한 유저")
    @OneToOne
    private User user;

    @Comment("리뷰 작성된 책")
    @ManyToOne
    private Book book;

    @Comment("별점")
    private Double stars;

    @Comment("리뷰 내용")
    private String content;

    @Comment("리뷰 활성화 상태")
    @Enumerated(EnumType.STRING)
    private ReviewStatus status;

    @Builder
    public Review(Integer id, User user, Book book,Double stars ,String content, ReviewStatus status) {
        this.id = id;
        this.user = user;
        this.book = book;
        this.stars = stars;
        this.content = content;
        this.status = status;
    }

    public ReviewDTO toDTO() {
        return new ReviewDTO(id, user.toDTO(), book.toDTO(), stars, content,getCreatedDate().toString(), status.name());
    }

    public ReviewResponse toResponse() {
        return new ReviewResponse(id, user.toDTO(), book.toDTO(), stars, content,getCreatedDate().toString(), status.name());
    }
}
