package shop.readmecorp.adminserverreadme.modules.banner.response;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
public class BannerResponse {

    private Integer id;

    private String imageUrl;

    private String createdDate;

    private String status;

    @Builder
    public BannerResponse(Integer id, String imageUrl, String createdDate, String status) {
        this.id = id;
        this.imageUrl = imageUrl;
        this.createdDate = createdDate;
        this.status = status;
    }
}
