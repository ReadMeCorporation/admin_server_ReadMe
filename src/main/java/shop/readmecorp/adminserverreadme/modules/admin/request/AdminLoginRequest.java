package shop.readmecorp.adminserverreadme.modules.admin.request;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.validation.constraints.NotNull;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class AdminLoginRequest {

    @NotNull(message = "아이디를 작성해주세요")
    private String username;

    @NotNull(message = "비밀번호를 작성해주세요")
    private String password;

}
