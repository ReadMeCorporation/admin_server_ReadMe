package shop.readmecorp.adminserverreadme.modules.book.dto;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import shop.readmecorp.adminserverreadme.modules.category.dto.BigCategoryDTO;
import shop.readmecorp.adminserverreadme.modules.category.dto.SmallCategoryDTO;
import shop.readmecorp.adminserverreadme.modules.file.dto.FileDTO;
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

    private BigCategoryDTO bigCategory;

    private SmallCategoryDTO smallCategory;

    private String authorInfo;

    private Boolean isHeart;

    private FileDTO epubFile;

    private FileDTO coverFile;

    private Double stars;

    private Integer hearts;

    private String createdDate;

    private String modifiedDate;

    private String status;

    @Builder
    public BookDTO(Integer id, PublisherDTO publisher, String title, String author, Integer price, String introduction, BigCategoryDTO bigCategory, SmallCategoryDTO smallCategory, String authorInfo, Boolean isHeart, FileDTO epubFile, FileDTO coverFile, Double stars, Integer hearts,String createdDate, String modifiedDate, String status) {
        this.id = id;
        this.publisher = publisher;
        this.title = title;
        this.author = author;
        this.price = price;
        this.introduction = introduction;
        this.bigCategory = bigCategory;
        this.smallCategory = smallCategory;
        this.authorInfo = authorInfo;
        this.isHeart = isHeart;
        this.epubFile = epubFile;
        this.coverFile = coverFile;
        this.stars = stars;
        this.hearts = hearts;
        this.createdDate = createdDate;
        this.modifiedDate = modifiedDate;
        this.status = status;
    }
}
