package shop.readmecorp.adminserverreadme.modules.notice.entity;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.hibernate.annotations.Comment;
import shop.readmecorp.adminserverreadme.common.jpa.BaseTime;
import shop.readmecorp.adminserverreadme.modules.file.entity.FileInfo;
import shop.readmecorp.adminserverreadme.modules.notice.dto.NoticeDTO;
import shop.readmecorp.adminserverreadme.modules.notice.enums.NoticeStatus;
import shop.readmecorp.adminserverreadme.modules.notice.response.NoticeResponse;

import javax.persistence.*;

@Entity
@Getter
@Setter
@NoArgsConstructor
@Table(name = "NOTICE_TB")
public class Notice extends BaseTime {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Comment("고유번호")
    private Integer id;

    @Comment("공지사항 제목")
    private String title;

    @Comment("공지사항 내용")
    private String content;

    @Comment("공지사항 이미지")
    @ManyToOne
    private FileInfo image;

    @Comment("공지사항 상태")
    @Enumerated(value = EnumType.STRING)
    private NoticeStatus status;

    @Builder
    public Notice(Integer id, String title, String content, FileInfo image, NoticeStatus status) {
        this.id = id;
        this.title = title;
        this.content = content;
        this.image = image;
        this.status = status;
    }

    public NoticeDTO toDTO() {
        return NoticeDTO.builder()
                .id(id)
                .title(title)
                .content(content)
                .createdDate(getCreatedDate().toString())
                .status(status.name())
                .build();
    }

    public NoticeResponse toResponse() {
        return NoticeResponse.builder()
                .id(id)
                .title(title)
                .content(content)
                .createdDate(getCreatedDate().toString())
                .status(status.name())
                .build();
    }
}
