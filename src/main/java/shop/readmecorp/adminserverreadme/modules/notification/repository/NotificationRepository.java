package shop.readmecorp.adminserverreadme.modules.notification.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import shop.readmecorp.adminserverreadme.modules.notification.entity.Notification;

public interface NotificationRepository extends JpaRepository<Notification, Integer> {
}
