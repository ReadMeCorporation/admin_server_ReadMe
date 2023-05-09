package shop.readmecorp.adminserverreadme.modules.notice.response;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
public class NoticeResponse {

    private Integer id;

    private String title;

    private String content;

    private String imageUrl;

    private String createdDate;

    private String status;

    @Builder
    public NoticeResponse(Integer id, String title, String content, String imageUrl, String createdDate, String status) {
        this.id = id;
        this.title = title;
        this.content = content;
        this.imageUrl = imageUrl;
        this.createdDate = createdDate;
        this.status = status;
    }
}
