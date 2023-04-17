package shop.readmecorp.adminserverreadme.modules.history.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import shop.readmecorp.adminserverreadme.modules.history.entity.SearchHistory;

public interface SearchHistoryRepository extends JpaRepository<SearchHistory, Integer> {
}
