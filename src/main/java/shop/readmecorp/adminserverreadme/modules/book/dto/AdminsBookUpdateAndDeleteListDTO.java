package shop.readmecorp.adminserverreadme.modules.book.dto;


import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
public class AdminsBookUpdateAndDeleteListDTO {

    private Integer id;

    private String coverUrl;

    private String title;

    private String author;

    private String publisher;

    private String createdDate;

    private String requestType;

    private String status;

    @Builder
    public AdminsBookUpdateAndDeleteListDTO(Integer id, String coverUrl, String title, String author, String publisher, String createdDate, String requestType, String status) {
        this.id = id;
        this.coverUrl = coverUrl;
        this.title = title;
        this.author = author;
        this.publisher = publisher;
        this.createdDate = createdDate;
        this.requestType = requestType;
        this.status = status;
    }
}
