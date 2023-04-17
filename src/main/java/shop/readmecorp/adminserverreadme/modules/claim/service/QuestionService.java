package shop.readmecorp.adminserverreadme.modules.claim.service;

import org.springframework.stereotype.Service;
import shop.readmecorp.adminserverreadme.modules.claim.repository.QuestionRepository;

@Service
public class QuestionService {

    private final QuestionRepository questionRepository;

    public QuestionService(QuestionRepository questionRepository) {
        this.questionRepository = questionRepository;
    }
}
