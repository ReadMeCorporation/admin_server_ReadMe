package shop.readmecorp.adminserverreadme.modules.review.response;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import shop.readmecorp.adminserverreadme.modules.book.dto.BookDTO;
import shop.readmecorp.adminserverreadme.modules.user.dto.UserDTO;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class ReviewResponse {
    private Integer id;

    private UserDTO user;

    private BookDTO book;

    private Double stars;

    private String content;

    private String createdDate;

    private String status;

}
