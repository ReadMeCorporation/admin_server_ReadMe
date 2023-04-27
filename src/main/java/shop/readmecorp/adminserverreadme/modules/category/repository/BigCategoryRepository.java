package shop.readmecorp.adminserverreadme.modules.category.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import shop.readmecorp.adminserverreadme.modules.category.entity.BigCategory;
import shop.readmecorp.adminserverreadme.modules.category.enums.BigCategoryType;

import java.util.Optional;

public interface BigCategoryRepository extends JpaRepository<BigCategory, Integer> {

    @Query("select b from BigCategory b where b.bigCategory = :big_category")
    Optional<BigCategory> findByBigCategory(@Param("big_category") BigCategoryType bigCategory);

}
