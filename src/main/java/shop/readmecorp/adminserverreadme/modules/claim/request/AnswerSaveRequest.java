package shop.readmecorp.adminserverreadme.modules.claim.request;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class AnswerSaveRequest {

    private Integer questionId;

    private String content;

    private String writeTime;

}
