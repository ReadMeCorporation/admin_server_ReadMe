package shop.readmecorp.adminserverreadme.modules.category.controller;

import org.springframework.web.bind.annotation.RestController;
import shop.readmecorp.adminserverreadme.modules.category.service.CategoryService;

@RestController
public class CategoryController {

    private final CategoryService categoryService;

    public CategoryController(CategoryService categoryService) {
        this.categoryService = categoryService;
    }
}
