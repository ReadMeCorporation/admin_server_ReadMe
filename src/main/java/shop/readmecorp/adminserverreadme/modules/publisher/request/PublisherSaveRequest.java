package shop.readmecorp.adminserverreadme.modules.publisher.request;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.validation.constraints.NotNull;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class PublisherSaveRequest {

    @NotNull(message = "아이디를 작성해주세요")
    private String username;

    @NotNull(message = "비밀번호를 작성해주세요")
    private String password;

    @NotNull(message = "사업자명을 작성해주세요")
    private String businessNumber;

    @NotNull(message = "사업자번호를 작성해주세요")
    private String businessName;

}
