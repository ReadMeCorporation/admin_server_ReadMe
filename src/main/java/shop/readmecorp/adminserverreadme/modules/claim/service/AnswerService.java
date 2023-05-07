package shop.readmecorp.adminserverreadme.modules.claim.service;

import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import shop.readmecorp.adminserverreadme.common.exception.Exception400;
import shop.readmecorp.adminserverreadme.modules.claim.AnswerConst;
import shop.readmecorp.adminserverreadme.modules.claim.QuestionConst;
import shop.readmecorp.adminserverreadme.modules.claim.entity.Answer;
import shop.readmecorp.adminserverreadme.modules.claim.entity.Question;
import shop.readmecorp.adminserverreadme.modules.claim.enums.ClaimStatus;
import shop.readmecorp.adminserverreadme.modules.claim.repository.AnswerRepository;
import shop.readmecorp.adminserverreadme.modules.claim.repository.QuestionRepository;
import shop.readmecorp.adminserverreadme.modules.claim.request.AnswerSaveRequest;
import shop.readmecorp.adminserverreadme.modules.claim.response.AnswerResponse;
import shop.readmecorp.adminserverreadme.modules.claim.response.QuestionResponse;

import java.time.LocalDateTime;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
public class AnswerService {

    private final AnswerRepository answerRepository;
    private final QuestionRepository questionRepository;

    public AnswerService(AnswerRepository answerRepository, QuestionRepository questionRepository) {
        this.answerRepository = answerRepository;
        this.questionRepository = questionRepository;
    }

    @Transactional
    public Answer save(AnswerSaveRequest request) {

        Optional<Question> optionalQuestion = questionRepository.findById(request.getQuestionId());

        if (optionalQuestion.isEmpty()){
            throw new Exception400(QuestionConst.notFound);
        }
        // 초 미만값 제외
        LocalDateTime date = LocalDateTime.now().withNano(0);

        Answer answer = Answer.builder()
                .question(optionalQuestion.get())
                .content(request.getContent())
                .writeTime(date)
                .status(ClaimStatus.ACTIVE)
                .build();

        optionalQuestion.get().setStatus(ClaimStatus.ACCEPT);

        return answerRepository.save(answer);
    }

    public PageImpl<?> getPage(Pageable pageable) {
        var page = answerRepository.findAll(pageable);
        var content = page.getContent()
                .stream()
                .map(Answer::toDTO)
                .collect(Collectors.toList());


        return new PageImpl<>(content, pageable, page.getTotalElements());
    }

    public AnswerResponse getAnswer(Integer id) {
        var optionalAnswer = answerRepository.findById(id);

        if (optionalAnswer.isEmpty()){
            throw new Exception400(AnswerConst.notFound);
        }
        return optionalAnswer.get().toResponse();
    }

}
