package shop.readmecorp.adminserverreadme.modules.admin.request;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class AdminSaveRequest {

    private String username;

    private String password;

    private String role;

}
