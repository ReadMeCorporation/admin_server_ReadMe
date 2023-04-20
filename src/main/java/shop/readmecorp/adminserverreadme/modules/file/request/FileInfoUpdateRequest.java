package shop.readmecorp.adminserverreadme.modules.file.request;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import shop.readmecorp.adminserverreadme.modules.file.enums.FileType;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class FileInfoUpdateRequest {

    private Integer id;

    private FileType type;

    private String status;

}
