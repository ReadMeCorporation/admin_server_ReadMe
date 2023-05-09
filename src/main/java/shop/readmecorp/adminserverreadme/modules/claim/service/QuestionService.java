package shop.readmecorp.adminserverreadme.modules.claim.service;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import shop.readmecorp.adminserverreadme.common.exception.Exception400;
import shop.readmecorp.adminserverreadme.common.jpa.RoleType;
import shop.readmecorp.adminserverreadme.modules.claim.QuestionConst;
import shop.readmecorp.adminserverreadme.modules.claim.dto.QuestionDTO;
import shop.readmecorp.adminserverreadme.modules.claim.entity.Question;
import shop.readmecorp.adminserverreadme.modules.claim.enums.ClaimStatus;
import shop.readmecorp.adminserverreadme.modules.claim.repository.QuestionRepository;
import shop.readmecorp.adminserverreadme.modules.claim.request.QuestionSaveRequest;
import shop.readmecorp.adminserverreadme.modules.claim.response.QuestionResponse;
import shop.readmecorp.adminserverreadme.modules.publisher.entity.Publisher;
import shop.readmecorp.adminserverreadme.modules.publisher.repository.PublisherRepository;

import java.util.Collections;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
public class QuestionService {

    private final QuestionRepository questionRepository;
    private final PublisherRepository publisherRepository;

    public QuestionService(QuestionRepository questionRepository, PublisherRepository publisherRepository) {
        this.questionRepository = questionRepository;
        this.publisherRepository = publisherRepository;
    }

    public PageImpl<?> getPublisherQuestions(Integer publisherId, Pageable pageable) {
        Page<Question> page = questionRepository.findAll(pageable);

        if (page.isEmpty()) {
            return new PageImpl<>(Collections.emptyList(), pageable, 0);
        }
        List<QuestionDTO> content = page.getContent()
                .stream()
                .filter(question -> question.getPublisher() != null && question.getPublisher().getId().equals(publisherId))
                .map(Question::toDTO)
                .collect(Collectors.toList());

        return new PageImpl<>(content, pageable, page.getTotalElements());
    }

    public PageImpl<?> getPage(Pageable pageable) {
        var page = questionRepository.findAll(pageable);
        var content = page.getContent()
                .stream()
                .map(Question::toDTO)
                .collect(Collectors.toList());


        return new PageImpl<>(content, pageable, page.getTotalElements());
    }

    @Transactional
    public Question save(QuestionSaveRequest request) {

        Optional<Publisher> optionalPublisher = publisherRepository.findById(request.getPublisherId());

        Question question = Question.builder()
                .role(RoleType.PUBLISHER)
                .user(null)
                .publisher(optionalPublisher.get())
                .title(request.getTitle())
                .content(request.getContent())
                .status(ClaimStatus.WAIT)
                .build();

        return questionRepository.save(question);
    }

    public QuestionResponse getQuestion(Integer id) {
        var optionalQuestion = questionRepository.findById(id);

        if (optionalQuestion.isEmpty()){
            throw new Exception400(QuestionConst.notFound);
        }
        return optionalQuestion.get().toResponse();
    }
}
