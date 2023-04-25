package shop.readmecorp.adminserverreadme.modules.book.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import shop.readmecorp.adminserverreadme.modules.book.entity.Heart;

import java.util.List;

public interface HeartRepository extends JpaRepository<Heart, Integer> {

    List<Heart> findByBookId(Integer bookId);

}
