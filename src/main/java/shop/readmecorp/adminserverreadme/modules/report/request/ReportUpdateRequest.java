package shop.readmecorp.adminserverreadme.modules.report.request;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import shop.readmecorp.adminserverreadme.modules.review.dto.ReviewDTO;
import shop.readmecorp.adminserverreadme.modules.user.dto.UserDTO;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class ReportUpdateRequest {

    private UserDTO user;

    private ReviewDTO review;

    private String content;

    private String writeTime;

    private String status;
}
