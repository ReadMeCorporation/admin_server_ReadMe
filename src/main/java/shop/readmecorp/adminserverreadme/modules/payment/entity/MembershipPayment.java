package shop.readmecorp.adminserverreadme.modules.payment.entity;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.hibernate.annotations.Comment;
import shop.readmecorp.adminserverreadme.common.jpa.BaseTime;
import shop.readmecorp.adminserverreadme.modules.card.entity.Card;
import shop.readmecorp.adminserverreadme.modules.membership.entity.Membership;
import shop.readmecorp.adminserverreadme.modules.payment.dto.MembershipPaymentDTO;
import shop.readmecorp.adminserverreadme.modules.payment.enums.PaymentStatus;
import shop.readmecorp.adminserverreadme.modules.payment.response.MembershipPaymentResponse;
import shop.readmecorp.adminserverreadme.modules.user.entity.User;

import javax.persistence.*;
import java.time.LocalDateTime;

@Entity
@Getter
@Setter
@NoArgsConstructor
@Table(name = "MEMBERSHIP_PAYMENT_TB")
public class MembershipPayment extends BaseTime {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Comment("고유번호")
    private Integer id;

    @Comment("리뷰 작성한 유저")
    @ManyToOne
    private User user;

    @Comment("멤버십 정보")
    @OneToOne
    private Membership membership;

    @Comment("멤버십 시작 시간")
    private String membershipStartTime;

    @Comment("멤버십 종료 시간")
    private String membershipEndTime;

    @Comment("멤버십 가격")
    private Integer price;

    @Comment("구매한 시간")
    private LocalDateTime paymentTime;

    @Comment("멤버십 구매내역 활성화 상태")
    @Enumerated(EnumType.STRING)
    private PaymentStatus status;

    @Builder
    public MembershipPayment(Integer id, User user, Membership membership, String membershipStartTime,String membershipEndTime,Integer price ,Card card, LocalDateTime paymentTime, PaymentStatus status) {
        this.id = id;
        this.user = user;
        this.membership = membership;
        this.membershipStartTime = membershipStartTime;
        this.membershipEndTime = membershipEndTime;
        this.price = price;
        this.paymentTime = paymentTime;
        this.status = status;
    }

    public MembershipPaymentDTO toDTO() {
        return new MembershipPaymentDTO(id, user.toDTO(), membership.toDTO(), membershipStartTime, membershipEndTime, price,paymentTime.toString(), status.name());
    }

    public MembershipPaymentResponse toResponse() {
        return new MembershipPaymentResponse(id, user.toDTO(), membership.toDTO(), membershipStartTime, membershipEndTime, price,paymentTime.toString(), status.name());
    }
}

