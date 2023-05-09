package shop.readmecorp.adminserverreadme.modules.category.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import shop.readmecorp.adminserverreadme.modules.category.entity.SmallCategory;
import shop.readmecorp.adminserverreadme.modules.category.enums.SmallCategoryType;

import java.util.Optional;

public interface SmallCategoryRepository extends JpaRepository<SmallCategory, Integer> {

    @Query("select s from SmallCategory s where s.smallCategory = :small_category")
    Optional<SmallCategory> findBySmallCategory(@Param("small_category") SmallCategoryType smallCategory);

}
