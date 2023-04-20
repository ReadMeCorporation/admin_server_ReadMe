package shop.readmecorp.adminserverreadme.modules.payment.response;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import shop.readmecorp.adminserverreadme.modules.card.dto.CardDTO;
import shop.readmecorp.adminserverreadme.modules.membership.dto.MembershipDTO;
import shop.readmecorp.adminserverreadme.modules.user.dto.UserDTO;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class MembershipPaymentResponse {

    private Integer id;

    private UserDTO user;

    private MembershipDTO membership;

    private String membershipStartTime;

    private String membershipEndTime;

    private Integer price;

    private CardDTO card;

    private String paymentTime;

    private String status;

}
