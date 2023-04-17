package shop.readmecorp.adminserverreadme.modules.claim.request;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import shop.readmecorp.adminserverreadme.modules.publisher.dto.PublisherDTO;
import shop.readmecorp.adminserverreadme.modules.user.dto.UserDTO;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class QuestionSaveRequest {

    private String role;

    private UserDTO user;

    private PublisherDTO publisher;

    private String title;

    private String content;

    private String writeTime;

}
