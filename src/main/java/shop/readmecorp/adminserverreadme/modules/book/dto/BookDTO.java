package shop.readmecorp.adminserverreadme.modules.book.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import shop.readmecorp.adminserverreadme.modules.book.entity.Book;
import shop.readmecorp.adminserverreadme.modules.category.dto.CategoryDTO;
import shop.readmecorp.adminserverreadme.modules.file.dto.FileInfoDTO;
import shop.readmecorp.adminserverreadme.modules.publisher.dto.PublisherDTO;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class BookDTO {

    private Integer id;

    private PublisherDTO publisher;

    private String title;

    private String author;

    private Integer price;

    private String introduction;

    private String content;

    private CategoryDTO category;

    private String authorInfo;

    private FileInfoDTO fileInfo;

    private String status;

    public BookDTO(Book book) {
        this.id = book.getId();
        this.publisher = book.getPublisher().toDTO();
        this.title = book.getTitle();
        this.author = book.getAuthor();
        this.price = book.getPrice();
        this.introduction = book.getIntroduction();
        this.content = book.getContent();
        this.category = book.getCategory().toDTO();
        this.authorInfo = book.getAuthorInfo();
        this.fileInfo = book.getFileInfo().toDTO();
        this.status = book.getStatus().name();
    }
}
