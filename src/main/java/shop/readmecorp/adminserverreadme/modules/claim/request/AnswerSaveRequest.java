package shop.readmecorp.adminserverreadme.modules.claim.request;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import shop.readmecorp.adminserverreadme.modules.claim.dto.QuestionDTO;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class AnswerSaveRequest {

    private Integer questionId;

    private String content;

    private String writeTime;

}
