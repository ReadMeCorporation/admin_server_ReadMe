package shop.readmecorp.adminserverreadme.modules.notice.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import shop.readmecorp.adminserverreadme.modules.notice.entity.Notice;

public interface NoticeRepository extends JpaRepository<Notice, Integer> {
}
