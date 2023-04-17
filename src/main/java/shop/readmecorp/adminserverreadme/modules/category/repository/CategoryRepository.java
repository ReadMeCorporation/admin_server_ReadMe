package shop.readmecorp.adminserverreadme.modules.category.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import shop.readmecorp.adminserverreadme.modules.category.entity.Category;

public interface CategoryRepository extends JpaRepository<Category, Integer> {
}
