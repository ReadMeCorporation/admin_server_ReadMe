package shop.readmecorp.adminserverreadme.modules.category.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import shop.readmecorp.adminserverreadme.modules.category.entity.SmallCategory;

public interface SmallCategoryRepository extends JpaRepository<SmallCategory, Integer> {
}
