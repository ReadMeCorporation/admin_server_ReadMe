package shop.readmecorp.adminserverreadme.modules.publisher.request;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class PublisherUpdateRequest {

    private String password;

    private String businessNumber;

    private String businessName;

    private String status;

}
