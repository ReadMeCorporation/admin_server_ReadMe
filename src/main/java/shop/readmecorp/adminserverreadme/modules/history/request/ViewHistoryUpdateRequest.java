package shop.readmecorp.adminserverreadme.modules.history.request;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import shop.readmecorp.adminserverreadme.modules.book.dto.BookDTO;
import shop.readmecorp.adminserverreadme.modules.user.dto.UserDTO;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class ViewHistoryUpdateRequest {

    private UserDTO user;

    private BookDTO book;

    private Integer lastPageNum;

    private String status;

}
