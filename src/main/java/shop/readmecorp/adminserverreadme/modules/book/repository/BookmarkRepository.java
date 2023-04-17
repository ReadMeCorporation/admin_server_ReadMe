package shop.readmecorp.adminserverreadme.modules.book.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import shop.readmecorp.adminserverreadme.modules.book.entity.Bookmark;

public interface BookmarkRepository extends JpaRepository<Bookmark, Integer> {
}
