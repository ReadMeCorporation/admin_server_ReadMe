package shop.readmecorp.adminserverreadme.modules.banner.request;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.springframework.web.multipart.MultipartFile;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class BannerSaveRequest {
    private MultipartFile bannerImage;
}
