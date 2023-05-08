package shop.readmecorp.adminserverreadme.modules.bookdeletelist.response;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import shop.readmecorp.adminserverreadme.modules.book.dto.BookDTO;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class BookDeleteListResponse {

    private Integer id;

    private BookDTO book;

    private String coverUrl;

    private String content;

    private String status;

}
