package shop.readmecorp.adminserverreadme.modules.notice.dto;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import shop.readmecorp.adminserverreadme.modules.file.dto.FileDTO;

@Getter
@Setter
@NoArgsConstructor
public class NoticeDTO {

    private Integer id;

    private String title;

    private String content;

    private FileDTO imageFile;

    private String createdDate;

    private String status;

    @Builder
    public NoticeDTO(Integer id, String title, String content, FileDTO imageFile, String createdDate, String status) {
        this.id = id;
        this.title = title;
        this.content = content;
        this.imageFile = imageFile;
        this.createdDate = createdDate;
        this.status = status;
    }
}
