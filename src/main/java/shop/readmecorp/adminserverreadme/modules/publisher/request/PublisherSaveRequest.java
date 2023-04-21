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
public class PublisherSaveRequest {

    @NotBlank(message = "아이디를 작성해주세요")
    private String username;

    @NotBlank(message = "비밀번호를 작성해주세요")
    private String password;

    @NotBlank(message = "사업자명을 작성해주세요")
    private String businessNumber;

    @NotBlank(message = "사업자번호를 작성해주세요")
    private String businessName;

}
