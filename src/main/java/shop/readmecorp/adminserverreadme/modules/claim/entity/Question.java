package shop.readmecorp.adminserverreadme.modules.claim.entity;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.hibernate.annotations.Comment;
import shop.readmecorp.adminserverreadme.common.jpa.BaseTime;
import shop.readmecorp.adminserverreadme.common.jpa.RoleType;
import shop.readmecorp.adminserverreadme.modules.claim.dto.QuestionDTO;
import shop.readmecorp.adminserverreadme.modules.claim.enums.ClaimStatus;
import shop.readmecorp.adminserverreadme.modules.claim.response.QuestionResponse;
import shop.readmecorp.adminserverreadme.modules.publisher.entity.Publisher;
import shop.readmecorp.adminserverreadme.modules.user.entity.User;

import javax.persistence.*;
import java.time.LocalDateTime;

@Entity
@Getter
@Setter
@NoArgsConstructor
@Table(name = "QUESTION_TB")
public class Question extends BaseTime {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Comment("고유번호")
    private Integer id;

    @Comment("문의 작성한 계정 권한")
    @Enumerated(EnumType.STRING)
    private RoleType role;

    @Comment("유저")
    @ManyToOne
    private User user;

    @Comment("출판사")
    @ManyToOne
    private Publisher publisher;

    @Comment("문의 제목")
    private String title;

    @Comment("문의 내용")
    private String content;

    @Comment("문의 활성화 상태")
    @Enumerated(EnumType.STRING)
    private ClaimStatus status;

    @Builder
    public Question(Integer id, RoleType role, User user, Publisher publisher, String title, String content, LocalDateTime writeTime, ClaimStatus status) {
        this.id = id;
        this.role = role;
        this.user = user;
        this.publisher = publisher;
        this.title = title;
        this.content = content;
        this.status = status;
    }

    public QuestionDTO toDTO() {
        return new QuestionDTO(id,
                role != null ? role.name() : "UNKNOWN",
                user != null ? user.toDTO() : null,
                publisher != null ? publisher.toDTO() : null,
                title,
                content,
                getCreatedDate() != null ? getCreatedDate().toString() : null,
                getModifiedDate() != null ? getModifiedDate().toString() : null,
                status != null ? status.name() : "UNKNOWN");
    }

    public QuestionResponse toResponse() {
        return new QuestionResponse(id,
                role != null ? role.name() : "UNKNOWN",
                user != null ? user.toDTO() : null,
                publisher != null ? publisher.toDTO() : null,
                title,
                content,
                getCreatedDate() != null ? getCreatedDate().toString() : null,
                getModifiedDate() != null ? getModifiedDate().toString() : null,
                status != null ? status.name() : "UNKNOWN");
    }
}
