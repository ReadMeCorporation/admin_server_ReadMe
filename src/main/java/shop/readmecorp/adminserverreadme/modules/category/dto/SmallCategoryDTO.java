package shop.readmecorp.adminserverreadme.modules.category.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import shop.readmecorp.adminserverreadme.common.ValueOfEnum;
import shop.readmecorp.adminserverreadme.modules.category.entity.SmallCategory;
import shop.readmecorp.adminserverreadme.modules.category.enums.CategoryStatus;
import shop.readmecorp.adminserverreadme.modules.category.enums.SmallCategoryType;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class SmallCategoryDTO {

    @NotNull
    private Integer id;

    @NotBlank
    private String smallCategory;

    @ValueOfEnum(enumClass = CategoryStatus.class, message = "카테고리 상태 값에 이상이 있습니다. 확인해주세요")
    private String status;

    public SmallCategory toEntity() {
        return SmallCategory.builder()
                .id(id)
                .smallCategory(SmallCategoryType.valueOf(smallCategory))
                .status(CategoryStatus.valueOf(status))
                .build();
    }

}