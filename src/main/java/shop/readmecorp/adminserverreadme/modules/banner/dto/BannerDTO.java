package shop.readmecorp.adminserverreadme.modules.banner.dto;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import shop.readmecorp.adminserverreadme.modules.file.dto.FileDTO;

@Getter
@Setter
@NoArgsConstructor
public class BannerDTO {

    private Integer id;

    private FileDTO imageFile;

    private String createdDate;

    private String status;

    @Builder
    public BannerDTO(Integer id, FileDTO imageFile, String createdDate, String status) {
        this.id = id;
        this.imageFile = imageFile;
        this.createdDate = createdDate;
        this.status = status;
    }
}
