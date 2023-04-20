package shop.readmecorp.adminserverreadme.modules.book.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import shop.readmecorp.adminserverreadme.modules.book.entity.Book;

public interface BookRepository extends JpaRepository<Book, Integer> {
}
