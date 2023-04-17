package shop.readmecorp.adminserverreadme.modules.notification.service;

import org.springframework.stereotype.Service;
import shop.readmecorp.adminserverreadme.modules.notification.repository.NotificationRepository;

@Service
public class NotificationService {

    private final NotificationRepository notificationRepository;

    public NotificationService(NotificationRepository notificationRepository) {
        this.notificationRepository = notificationRepository;
    }
}
