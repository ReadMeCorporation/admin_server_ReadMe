package shop.readmecorp.adminserverreadme.modules.book.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import shop.readmecorp.adminserverreadme.modules.book.entity.Book;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class PublishersBookRequestDTO {

    private Integer id;

    private String title;

    private String author;

    private String status;

    private String coverUrl;

    public PublishersBookRequestDTO(Book book) {
        this.id = book.getId();
        this.title = book.getTitle();
        this.author = book.getAuthor();
        this.status = book.getStatus().name();

    }
}