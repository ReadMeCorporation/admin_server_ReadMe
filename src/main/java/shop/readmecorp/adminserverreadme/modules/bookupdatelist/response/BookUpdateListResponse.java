package shop.readmecorp.adminserverreadme.modules.bookupdatelist.response;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import shop.readmecorp.adminserverreadme.modules.book.dto.BookDTO;
import shop.readmecorp.adminserverreadme.modules.category.dto.BigCategoryDTO;
import shop.readmecorp.adminserverreadme.modules.category.dto.SmallCategoryDTO;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class BookUpdateListResponse {

    private Integer id;

    private BookDTO book;

    private String title;

    private String author;

    private Integer price;

    private String introduction;

    private String epubUrl;

    private String coverUrl;

    private BigCategoryDTO bigCategory;

    private SmallCategoryDTO smallCategory;

    private String authorInfo;

    private String content;

    private String createdDate;

    private String staus;

}
