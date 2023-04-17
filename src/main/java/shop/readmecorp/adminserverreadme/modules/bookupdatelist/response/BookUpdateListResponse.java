package shop.readmecorp.adminserverreadme.modules.bookupdatelist.response;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import shop.readmecorp.adminserverreadme.modules.book.dto.BookDTO;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class BookUpdateListResponse {

    private Integer id;

    private BookDTO book;

    private String content;

    private String staus;

}
