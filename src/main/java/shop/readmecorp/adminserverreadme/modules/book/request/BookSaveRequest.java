package shop.readmecorp.adminserverreadme.modules.book.request;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import shop.readmecorp.adminserverreadme.modules.category.dto.CategoryDTO;
import shop.readmecorp.adminserverreadme.modules.file.dto.FileInfoDTO;
import shop.readmecorp.adminserverreadme.modules.publisher.dto.PublisherDTO;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class BookSaveRequest {

    private PublisherDTO publisher;

    private String title;

    private String author;

    private Integer price;

    private String introduction;

    private String content;

    private CategoryDTO category;

    private String authorInfo;

    private FileInfoDTO fileInfo;

}
