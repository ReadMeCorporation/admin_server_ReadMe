package shop.readmecorp.adminserverreadme.modules.publisher.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import shop.readmecorp.adminserverreadme.common.jpa.RoleType;
import shop.readmecorp.adminserverreadme.modules.publisher.entity.Publisher;
import shop.readmecorp.adminserverreadme.modules.publisher.enums.PublisherStatus;
import shop.readmecorp.adminserverreadme.util.DateTimeConverter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class PublisherDTO {

    private Integer id;

    private String username;

    private String role;

    private String businessNumber;

    private String businessName;

    private String joinTime;

    private String status;

    public Publisher toEntity() {
        return Publisher.builder()
                .id(id)
                .username(username)
                .role(RoleType.valueOf(role))
                .businessNumber(businessNumber)
                .businessName(businessName)
                .joinTime(DateTimeConverter.stringToLocalDateTime(joinTime))
                .status(PublisherStatus.valueOf(status))
                .build();
    }
}