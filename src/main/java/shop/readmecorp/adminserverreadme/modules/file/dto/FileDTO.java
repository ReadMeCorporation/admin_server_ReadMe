package shop.readmecorp.adminserverreadme.modules.file.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.hibernate.annotations.Comment;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class FileDTO {

    private Integer id;

    private String fileName;

    private String fileUrl;

    private Integer fileSize;

    private String extension;

    private String status;

}
