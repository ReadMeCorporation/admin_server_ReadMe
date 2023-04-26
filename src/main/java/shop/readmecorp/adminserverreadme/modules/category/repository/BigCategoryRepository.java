package shop.readmecorp.adminserverreadme.modules.category.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import shop.readmecorp.adminserverreadme.modules.category.entity.BigCategory;

public interface BigCategoryRepository extends JpaRepository<BigCategory, Integer> {
}
