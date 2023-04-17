package shop.readmecorp.adminserverreadme.modules.membership.request;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class MembershipSaveRequest {

    private Integer price;

    private String membershipTerm;

}
