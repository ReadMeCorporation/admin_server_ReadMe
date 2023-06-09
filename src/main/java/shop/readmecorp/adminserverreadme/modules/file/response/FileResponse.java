package shop.readmecorp.adminserverreadme.modules.file.response;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import shop.readmecorp.adminserverreadme.modules.file.dto.FileInfoDTO;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class FileResponse {

    private  Integer id;

    private FileInfoDTO fileInfo;

    private String fileName;

    private String fileUrl;

    private String status;

}
