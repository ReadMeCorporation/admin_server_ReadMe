package shop.readmecorp.adminserverreadme.modules.category.service;

import org.springframework.stereotype.Service;
import shop.readmecorp.adminserverreadme.modules.category.entity.BigCategory;
import shop.readmecorp.adminserverreadme.modules.category.entity.SmallCategory;
import shop.readmecorp.adminserverreadme.modules.category.repository.BigCategoryRepository;
import shop.readmecorp.adminserverreadme.modules.category.repository.SmallCategoryRepository;

import java.util.Optional;

@Service
public class CategoryService {

    private SmallCategoryRepository categoryRepository;

    private BigCategoryRepository bigCategoryRepository;

    private SmallCategoryRepository smallCategoryRepository;

    public CategoryService(SmallCategoryRepository categoryRepository, BigCategoryRepository bigCategoryRepository, SmallCategoryRepository smallCategoryRepository) {
        this.categoryRepository = categoryRepository;
        this.bigCategoryRepository = bigCategoryRepository;
        this.smallCategoryRepository = smallCategoryRepository;
    }

    public Optional<BigCategory> getBigCategory(Integer id) {

        return bigCategoryRepository.findById(id);
    }

    public Optional<SmallCategory> getSmallCategory(Integer id){

        return smallCategoryRepository.findById(id);
    }
}
