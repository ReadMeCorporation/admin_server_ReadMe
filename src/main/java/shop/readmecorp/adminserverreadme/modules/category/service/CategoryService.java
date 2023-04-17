package shop.readmecorp.adminserverreadme.modules.category.service;

import org.springframework.stereotype.Service;
import shop.readmecorp.adminserverreadme.modules.category.repository.CategoryRepository;

@Service
public class CategoryService {

    private CategoryRepository categoryRepository;

    public CategoryService(CategoryRepository categoryRepository) {
        this.categoryRepository = categoryRepository;
    }
}
