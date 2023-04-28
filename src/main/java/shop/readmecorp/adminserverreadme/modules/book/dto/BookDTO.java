package shop.readmecorp.adminserverreadme.modules.book.dto;

import lombok.*;
import shop.readmecorp.adminserverreadme.modules.book.entity.Book;
import shop.readmecorp.adminserverreadme.modules.book.enums.BookStatus;
import shop.readmecorp.adminserverreadme.modules.category.dto.BigCategoryDTO;
import shop.readmecorp.adminserverreadme.modules.category.dto.SmallCategoryDTO;
import shop.readmecorp.adminserverreadme.modules.file.dto.FileInfoDTO;
import shop.readmecorp.adminserverreadme.modules.publisher.dto.PublisherDTO;

import javax.validation.constraints.NotNull;

@Getter
@Setter
@NoArgsConstructor
public class BookDTO {

    @NotNull(message = "책 ID가 없습니다.")
    private Integer id;

    private PublisherDTO publisher;

    private String title;

    private String author;

    private Integer price;

    private String introduction;

    private String epubUrl;

    private String coverUrl;

    private BigCategoryDTO bigCategory;

    private SmallCategoryDTO smallCategory;

    private String authorInfo;

    private String status;

    public Book toEntity() {
        return Book.builder()
                .id(id)
                .publisher(publisher.toEntity())
                .title(title)
                .author(author)
                .price(price)
                .introduction(introduction)
                .bigCategory(bigCategory.toEntity())
                .smallCategory(smallCategory.toEntity())
                .authorInfo(authorInfo)
                .status(BookStatus.valueOf(status))
                .build();
    }

    @Builder
    public BookDTO(Integer id, PublisherDTO publisher, String title, String author, Integer price, String introduction, String epubUrl, String coverUrl, BigCategoryDTO bigCategory, SmallCategoryDTO smallCategory, String authorInfo, String status) {
        this.id = id;
        this.publisher = publisher;
        this.title = title;
        this.author = author;
        this.price = price;
        this.introduction = introduction;
        this.epubUrl = epubUrl;
        this.coverUrl = coverUrl;
        this.bigCategory = bigCategory;
        this.smallCategory = smallCategory;
        this.authorInfo = authorInfo;
        this.status = status;
    }
}
