package shop.readmecorp.adminserverreadme.modules.payment.request;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import shop.readmecorp.adminserverreadme.modules.book.dto.BookDTO;
import shop.readmecorp.adminserverreadme.modules.card.entity.Card;
import shop.readmecorp.adminserverreadme.modules.user.dto.UserDTO;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class BookPaymentUpdateRequest {

    private UserDTO user;

    private BookDTO book;

    private Integer price;

    private Card card;

    private String paymentTime;

    private String status;

}
