package shop.readmecorp.adminserverreadme.modules.notification.request;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class NotificationUpdateRequest {

    private String title;

    private String content;

    private String writeTime;

    private String status;

}
