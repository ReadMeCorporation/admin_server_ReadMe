package shop.readmecorp.adminserverreadme.modules.book.request;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import shop.readmecorp.adminserverreadme.common.ValueOfEnum;
import shop.readmecorp.adminserverreadme.modules.book.enums.BookStatus;
import shop.readmecorp.adminserverreadme.modules.category.dto.BigCategoryDTO;
import shop.readmecorp.adminserverreadme.modules.file.dto.FileInfoDTO;
import shop.readmecorp.adminserverreadme.modules.publisher.dto.PublisherDTO;

import javax.validation.Valid;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class BookUpdateRequest {

    @NotNull(message = "출판사 정보를 입력해주세요")
    @Valid
    private PublisherDTO publisher;

    @NotBlank(message = "책 제목을 입력해주세요")
    private String title;

    @NotBlank(message = "작가를 입력해주세요")
    private String author;

    @NotNull(message = "책 가격을 입력해주세요")
    private Integer price;

    @NotBlank(message = "책 소개를 입력해주세요")
    private String introduction;

    @NotBlank(message = "책 내용을 입력해주세요")
    private String content;

    @NotNull(message = "카테고리를 입력해주세요")
    @Valid
    private BigCategoryDTO category;

    @NotBlank(message = "작가소개를 입력해주세요")
    private String authorInfo;

    @ValueOfEnum(enumClass = BookStatus.class, message = "책 상태 값에 이상이 있습니다. 확인해주세요")
    private String status;
}
