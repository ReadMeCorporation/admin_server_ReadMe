package shop.readmecorp.adminserverreadme.modules.publisher.request;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.validation.constraints.NotBlank;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class PublisherLoginRequest {

    @NotBlank(message = "아이디를 작성해주세요")
    private String username;

    @NotBlank(message = "비밀번호를 작성해주세요")
    private String password;

}
