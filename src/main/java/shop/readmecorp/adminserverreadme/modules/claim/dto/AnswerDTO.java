package shop.readmecorp.adminserverreadme.modules.claim.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class AnswerDTO {

    private Integer id;

    private QuestionDTO question;

    private String content;

    private String createdDate;

    private String status;

}

