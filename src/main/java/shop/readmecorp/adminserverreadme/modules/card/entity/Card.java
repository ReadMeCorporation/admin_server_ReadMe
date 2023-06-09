package shop.readmecorp.adminserverreadme.modules.card.entity;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.hibernate.annotations.Comment;
import shop.readmecorp.adminserverreadme.common.jpa.BaseTime;
import shop.readmecorp.adminserverreadme.modules.card.dto.CardDTO;
import shop.readmecorp.adminserverreadme.modules.card.enums.CardStatus;
import shop.readmecorp.adminserverreadme.modules.card.response.CardResponse;

import javax.persistence.*;

@Entity
@Getter
@Setter
@NoArgsConstructor
@Table(name = "CARD_TB")
public class Card extends BaseTime {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Comment("고유번호")
    private Integer id;

    @Comment("카드 번호")
    private String cardNum;

    @Comment("카드 비밀번호")
    private String cardPassword;

    @Comment("유효기간")
    private String exp;

    @Comment("CVC")
    private Integer cvc;

    @Comment("자동 결제 상태")
    private Boolean isAutoPayment;

    @Comment("카드 활성화 상태")
    @Enumerated(EnumType.STRING)
    private CardStatus status;

    @Builder
    public Card(Integer id, String cardNum, String cardPassword, String exp, Integer cvc, Boolean isAutoPayment, CardStatus status) {
        this.id = id;
        this.cardNum = cardNum;
        this.cardPassword = cardPassword;
        this.exp = exp;
        this.cvc = cvc;
        this.isAutoPayment = isAutoPayment;
        this.status = status;
    }

    public CardDTO toDTO() {
        return new CardDTO(id, cardNum, cardPassword, exp, cvc, isAutoPayment, status.name()  );
    }

    public CardResponse toResponse() {
        return new CardResponse(id, cardNum, cardPassword, exp, cvc, isAutoPayment, status.name());
    }
}
