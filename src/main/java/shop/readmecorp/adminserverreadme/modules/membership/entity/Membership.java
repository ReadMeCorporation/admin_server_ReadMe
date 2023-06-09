package shop.readmecorp.adminserverreadme.modules.membership.entity;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.hibernate.annotations.Comment;
import shop.readmecorp.adminserverreadme.common.jpa.BaseTime;
import shop.readmecorp.adminserverreadme.modules.membership.dto.MembershipDTO;
import shop.readmecorp.adminserverreadme.modules.membership.enums.MembershipStatus;
import shop.readmecorp.adminserverreadme.modules.membership.response.MembershipResponse;

import javax.persistence.*;

@Entity
@Getter
@Setter
@NoArgsConstructor
@Table(name = "MEMBERSHIP_TB")
public class Membership extends BaseTime {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Comment("고유번호")
    private Integer id;

    @Comment("멤버십 이름")
    private String membershipName;

    @Comment("멤버십 가격")
    private Integer price;

    @Comment("멤버십 기간")
    private String membershipTerm;

    @Comment("멤버십 활성화 상태")
    @Enumerated(EnumType.STRING)
    private MembershipStatus status;

    @Builder
    public Membership(Integer id, String membershipName, Integer price, String membershipTerm, MembershipStatus status) {
        this.id = id;
        this.membershipName = membershipName;
        this.price = price;
        this.membershipTerm = membershipTerm;
        this.status = status;
    }

    public MembershipDTO toDTO() {
        return new MembershipDTO(id,price,membershipTerm, status.name());
    }

    public MembershipResponse toResponse() {
        return new MembershipResponse(id,price,membershipTerm, status.name());
    }
}
