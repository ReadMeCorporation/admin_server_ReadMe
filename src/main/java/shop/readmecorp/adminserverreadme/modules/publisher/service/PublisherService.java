package shop.readmecorp.adminserverreadme.modules.publisher.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import shop.readmecorp.adminserverreadme.common.exception.CustomException;
import shop.readmecorp.adminserverreadme.common.exception.Exception400;
import shop.readmecorp.adminserverreadme.common.jpa.RoleType;
import shop.readmecorp.adminserverreadme.modules.publisher.entity.Publisher;
import shop.readmecorp.adminserverreadme.modules.publisher.enums.PublisherStatus;
import shop.readmecorp.adminserverreadme.modules.publisher.repository.PublisherRepository;
import shop.readmecorp.adminserverreadme.modules.publisher.request.PublisherLoginRequest;
import shop.readmecorp.adminserverreadme.modules.publisher.request.PublisherSaveRequest;

import java.util.Optional;

@Service
public class PublisherService {

    private final PublisherRepository publisherRepository;

    public PublisherService(PublisherRepository publisherRepository) {
        this.publisherRepository = publisherRepository;
    }

    @Transactional
    public Publisher join(PublisherSaveRequest request) {
        // 1. 동일 이메일 존재 검사
        Optional<Publisher> publisherOP = publisherRepository.findByUsername(request.getUsername());
        if (publisherOP.isPresent()) {
            throw new CustomException("동일한 이메일이 존재합니다");
        }
        // 1. 동일 사업자이름 존재 검사
        Optional<Publisher> publisherOP2 = publisherRepository.findByBusinessName(request.getBusinessName());
        if (publisherOP2.isPresent()) {
            throw new CustomException("동일한 사업자이름이 존재합니다");
        }


        Publisher publisher = Publisher.builder()
                .username(request.getUsername())
                .password(request.getPassword())
                .businessNumber(request.getBusinessNumber())
                .businessName(request.getBusinessName())
                .build();

        return publisherRepository.save(publisher);
    }

    @Transactional
    public Publisher login(PublisherLoginRequest request) {

        Optional<Publisher> principal = publisherRepository.findByUsernameAndPassword(request.getUsername(), request.getPassword());

        if (principal == null || principal.isEmpty()){
            throw new CustomException("존재하지 않는 아이디거나 비밀번호를 다시 확인해주시기 바랍니다.");
        }

        if (principal.get().getStatus() == PublisherStatus.WAIT){
            throw new CustomException("아직 관리자가 회원가입 승인을 하지 않았습니다.");
        }

        if (principal.get().getStatus() == PublisherStatus.DELETE){
            throw new CustomException("비활성화된 계정입니다.");
        }

        return principal.get();
    }
}
