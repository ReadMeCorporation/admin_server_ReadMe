package shop.readmecorp.adminserverreadme.modules.bookupdatelist.request;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.springframework.web.multipart.MultipartFile;
import shop.readmecorp.adminserverreadme.modules.book.dto.BookDTO;
import shop.readmecorp.adminserverreadme.modules.category.enums.BigCategoryType;
import shop.readmecorp.adminserverreadme.modules.category.enums.SmallCategoryType;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class BookUpdateListSaveRequest {

    @NotBlank(message = "출판사명이 없습니다.")
    private String publisher;

    @NotBlank(message = "도서명을 입력해주세요.")
    private String title;

    @NotBlank(message = "저자를 입력해주세요.")
    private String author;

    @NotNull(message = "책 가격을 입력해주세요.")
    private Integer price;

    @NotBlank(message = "책 소개를 입력해주세요.")
    private String introduction;

    @NotNull(message = "책 파일을 업로드해주세요.")
    private MultipartFile epubFile;

    @NotNull(message = "큰 카테고리를 입력해주세요.")
    private BigCategoryType bigCategory;

    @NotNull(message = "작은 카테고리를 입력해주세요.")
    private SmallCategoryType smallCategory;

    @NotBlank(message = "저자소개를 입력해주세요.")
    private String authorInfo;

    @NotNull(message = "표지를 업로드해주세요.")
    private MultipartFile bookCover;

    private String content;

}
