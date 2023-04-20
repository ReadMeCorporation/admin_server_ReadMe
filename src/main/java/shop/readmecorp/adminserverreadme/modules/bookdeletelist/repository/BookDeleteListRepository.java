package shop.readmecorp.adminserverreadme.modules.bookdeletelist.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import shop.readmecorp.adminserverreadme.modules.bookdeletelist.entity.BookDeleteList;

public interface BookDeleteListRepository extends JpaRepository<BookDeleteList, Integer> {
}
