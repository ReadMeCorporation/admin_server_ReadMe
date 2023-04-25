package shop.readmecorp.adminserverreadme.modules.user.response;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import shop.readmecorp.adminserverreadme.modules.file.dto.FileInfoDTO;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class UserResponse {

    private Integer id;

    private String username;

    private String role;

    private Boolean isMembership;

    private Boolean isAutoPayment;

    //TODO 이거 써도되나?
    private String joinTime;

    private FileInfoDTO fileInfo;

    private String status;

}
