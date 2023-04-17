package shop.readmecorp.adminserverreadme.modules.history.request;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import shop.readmecorp.adminserverreadme.modules.user.dto.UserDTO;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class SearchHistoryUpdateRequest {

    private UserDTO user;

    private String content;

    private String status;

}
