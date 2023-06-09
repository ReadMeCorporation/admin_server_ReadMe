package shop.readmecorp.adminserverreadme.modules.category.request;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import shop.readmecorp.adminserverreadme.common.ValueOfEnum;
import shop.readmecorp.adminserverreadme.modules.category.enums.CategoryStatus;

import javax.validation.constraints.NotNull;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class BigCategoryUpdateRequest {

    @NotNull(message = "대분류 카테고리를 입력해주세요.")
    private String bigCategory;

    @ValueOfEnum(enumClass = CategoryStatus.class, message = "카테고리 상태 값에 이상이 있습니다. 확인해주세요.")
    private String status;

}
