package shop.readmecorp.adminserverreadme.modules.bookdeletelist.entity;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.hibernate.annotations.Comment;
import shop.readmecorp.adminserverreadme.common.jpa.BaseTime;
import shop.readmecorp.adminserverreadme.modules.book.entity.Book;
import shop.readmecorp.adminserverreadme.modules.bookdeletelist.dto.BookDeleteListDTO;
import shop.readmecorp.adminserverreadme.modules.bookdeletelist.enums.BookDeleteListStatus;
import shop.readmecorp.adminserverreadme.modules.bookdeletelist.response.BookDeleteListResponse;

import javax.persistence.*;

@Entity
@Getter
@Setter
@NoArgsConstructor
@Table(name = "BOOK_DELETE_LIST_TB")
public class BookDeleteList extends BaseTime {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Comment("고유번호")
    private Integer id;

    @Comment("삭제요청한 책")
    @ManyToOne
    private Book book;

    @Comment("삭제할 책 표지")
    private String coverUrl;

    @Comment("요청사항")
    private String content;

    @Comment("삭제요청 활성화 상태")
    @Enumerated(EnumType.STRING)
    private BookDeleteListStatus status;

    @Builder
    public BookDeleteList(Integer id, Book book, String coverUrl,String content, BookDeleteListStatus status) {
        this.id = id;
        this.book = book;
        this.coverUrl =coverUrl;
        this.content = content;
        this.status = status;
    }

    public BookDeleteListDTO toDTO() {
        return new BookDeleteListDTO(id, book.toDTO(), content, status.name()  );
    }

    public BookDeleteListResponse toResponse() {
        return new BookDeleteListResponse(id, book.toDTO(), coverUrl, content, status.name());
    }
}
