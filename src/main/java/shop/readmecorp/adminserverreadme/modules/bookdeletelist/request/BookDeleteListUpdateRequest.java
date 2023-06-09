package shop.readmecorp.adminserverreadme.modules.bookdeletelist.request;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import shop.readmecorp.adminserverreadme.modules.book.dto.BookDTO;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class BookDeleteListUpdateRequest {

    private BookDTO book;

    private String content;

    private String status;

}
