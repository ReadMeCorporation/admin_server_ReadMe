package shop.readmecorp.adminserverreadme.modules.book.response;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import shop.readmecorp.adminserverreadme.modules.category.dto.BigCategoryDTO;
import shop.readmecorp.adminserverreadme.modules.category.dto.SmallCategoryDTO;
import shop.readmecorp.adminserverreadme.modules.publisher.dto.PublisherDTO;

@Getter
@Setter
@NoArgsConstructor
public class BookResponse {

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

    private String createdDate;

    private String modifiedDate;

    private String status;

    @Builder
    public BookResponse(Integer id, PublisherDTO publisher, String title, String author, Integer price, String introduction, String epubUrl, String coverUrl, BigCategoryDTO bigCategory, SmallCategoryDTO smallCategory, String authorInfo, String createdDate,String modifiedDate, String status) {
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
        this.createdDate = createdDate;
        this.modifiedDate = modifiedDate;
        this.status = status;
    }
}
