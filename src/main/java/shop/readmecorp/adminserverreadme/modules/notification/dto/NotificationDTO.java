package shop.readmecorp.adminserverreadme.modules.notification.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class NotificationDTO {

    private Integer id;

    private String title;

    private String content;

    private String writeTime;

    private String status;

}
