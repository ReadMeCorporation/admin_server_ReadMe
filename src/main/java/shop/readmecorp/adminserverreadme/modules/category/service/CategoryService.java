package shop.readmecorp.adminserverreadme.modules.category.service;

import org.springframework.stereotype.Service;
import shop.readmecorp.adminserverreadme.modules.category.repository.SmallCategoryRepository;

@Service
public class CategoryService {

    private SmallCategoryRepository categoryRepository;

    public CategoryService(SmallCategoryRepository categoryRepository) {
        this.categoryRepository = categoryRepository;
    }
}
