package shop.readmecorp.adminserverreadme.modules.category.response;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import shop.readmecorp.adminserverreadme.modules.category.dto.BigCategoryDTO;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class SmallCategoryResponse {

    private Integer id;

    private String smallCategory;

    private BigCategoryDTO bigCategory;

    private String status;

}
