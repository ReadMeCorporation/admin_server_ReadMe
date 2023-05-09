package shop.readmecorp.adminserverreadme.modules.claim.request;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class QuestionSaveRequest {

    private String role;

    private Integer publisherId;

    private String title;

    private String content;

    private String writeTime;

}
