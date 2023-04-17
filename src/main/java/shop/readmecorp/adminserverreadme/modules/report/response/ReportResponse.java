package shop.readmecorp.adminserverreadme.modules.report.response;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import shop.readmecorp.adminserverreadme.modules.review.dto.ReviewDTO;
import shop.readmecorp.adminserverreadme.modules.user.dto.UserDTO;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class ReportResponse {

    private Integer id;

    private UserDTO user;

    private ReviewDTO review;

    private String content;

    private String writeTime;

    private String status;

}
