package shop.readmecorp.adminserverreadme.modules.book.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import shop.readmecorp.adminserverreadme.modules.book.entity.Heart;
import shop.readmecorp.adminserverreadme.modules.review.entity.Review;

import java.util.List;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class PublishersBookListDTO {

    private Integer id;

    private String coverUrl;

    private String title;

    private String author;

    private Double stars;

    private Integer hearts;

    private String status;


    public PublishersBookListDTO(BookDTO book, List<Review> reviews, List<Heart> hearts) {
        this.id = book.getId();
        this.coverUrl = book.getCoverUrl();
        this.title = book.getTitle();
        this.author = book.getAuthor();
        this.stars = calculateAverageStars(reviews);
        this.hearts = hearts.size();
        this.status = book.getStatus();

    }

    // 별점 평균계산
    private Double calculateAverageStars(List<Review> reviews) {
        if (reviews == null || reviews.isEmpty()) {
            return 0.0;
        }

        double sum = 0;
        int count = reviews.size();

        for (Review review : reviews) {
            sum += review.getStars();
        }
        return (count > 0) ? Math.round((sum / count) * 100) / 100.0 : 0;
    }

}
