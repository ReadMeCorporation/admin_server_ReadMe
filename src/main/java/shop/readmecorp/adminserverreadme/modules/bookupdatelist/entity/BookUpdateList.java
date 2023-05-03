package shop.readmecorp.adminserverreadme.modules.bookupdatelist.entity;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.hibernate.annotations.Comment;
import shop.readmecorp.adminserverreadme.common.jpa.BaseTime;
import shop.readmecorp.adminserverreadme.modules.book.dto.BookDTO;
import shop.readmecorp.adminserverreadme.modules.book.entity.Book;
import shop.readmecorp.adminserverreadme.modules.bookupdatelist.dto.BookUpdateListDTO;
import shop.readmecorp.adminserverreadme.modules.bookupdatelist.enums.BookUpdateListStatus;
import shop.readmecorp.adminserverreadme.modules.bookupdatelist.response.BookUpdateListResponse;
import shop.readmecorp.adminserverreadme.modules.category.entity.BigCategory;
import shop.readmecorp.adminserverreadme.modules.category.entity.SmallCategory;
import shop.readmecorp.adminserverreadme.modules.publisher.entity.Publisher;

import javax.persistence.*;

@Entity
@Getter
@Setter
@NoArgsConstructor
@Table(name = "BOOK_UPDATE_LIST_TB")
public class BookUpdateList extends BaseTime {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Comment("고유번호")
    private Integer id;

    @Comment("수정요청한 책")
    @ManyToOne
    private Book book;

    @Comment("수정할 책의 출판사")
    @ManyToOne
    private Publisher publisher;

    @Comment("수정할 책 제목")
    private String title;

    @Comment("수정할 책 저자")
    private String author;

    @Comment("수정할 책 가격")
    private Integer price;

    @Comment("수정할 책 소개")
    private String introduction;

    @Comment("수정할 책 파일")
    private String epubUrl;

    @Comment("수정할 책 표지")
    private String coverUrl;

    @Comment("수정할 대분류 카테고리")
    @OneToOne
    private BigCategory bigCategory;

    @Comment("수정할 소분류 카테고리")
    @OneToOne
    private SmallCategory smallCategory;

    @Comment("수정할 저자 정보")
    private String authorInfo;

    @Comment("요청사항")
    private String content;

    @Comment("수정요청 활성화 상태")
    @Enumerated(EnumType.STRING)
    private BookUpdateListStatus status;

    @Builder
    public BookUpdateList(Integer id, Book book, Publisher publisher, String title, String author, Integer price, String introduction, String epubUrl, String coverUrl, BigCategory bigCategory, SmallCategory smallCategory, String authorInfo, String content, BookUpdateListStatus status) {
        this.id = id;
        this.book = book;
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
        this.content = content;
        this.status = status;
    }

    public BookUpdateListDTO toDTO() {
        return new BookUpdateListDTO(id, book.toDTO(), content, status.name()  );
    }

    public BookUpdateListResponse toResponse() {
        BookDTO bookDTO = book.toDTO();
        return new BookUpdateListResponse(id, bookDTO, title,author,price,introduction,epubUrl,coverUrl,bigCategory.toDTO(),smallCategory.toDTO(),authorInfo, content, status.name());
    }

}
