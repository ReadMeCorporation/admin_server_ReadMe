package shop.readmecorp.adminserverreadme.modules.user.entity;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.hibernate.annotations.Comment;
import shop.readmecorp.adminserverreadme.common.jpa.BaseTime;
import shop.readmecorp.adminserverreadme.common.jpa.RoleType;
import shop.readmecorp.adminserverreadme.modules.file.entity.FileInfo;
import shop.readmecorp.adminserverreadme.modules.user.dto.UserDTO;
import shop.readmecorp.adminserverreadme.modules.user.enums.UserStatus;
import shop.readmecorp.adminserverreadme.modules.user.response.UserResponse;

import javax.persistence.*;
import java.time.LocalDateTime;

@Entity
@Getter
@Setter
@NoArgsConstructor
@Table(name = "USER_TB")
public class User extends BaseTime {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Comment("고유번호")
    private Integer id;

    @Comment("아이디")
    private String username;

    @Comment("비밀번호")
    private String password;

    @Comment("권한")
    @Enumerated(EnumType.STRING)
    private RoleType role;

    @Comment("멤버십 가입 여부")
    private Boolean isMembership;

    @Comment("자동 결제 여부")
    private Boolean isAutoPayment;

    //TODO 이거 써도되나?
    @Comment("유저 가입 시간")
    private LocalDateTime joinTime;

    @Comment("프로필 사진")
    @ManyToOne
    private FileInfo fileInfo;

    @Comment("유저 활성화 상태")
    @Enumerated(EnumType.STRING)
    private UserStatus status;

    @Builder
    public User(Integer id, String username,String password, RoleType role, Boolean isMembership, Boolean isAutoPayment, LocalDateTime joinTime, FileInfo fileInfo, UserStatus status) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.role = role;
        this.isMembership = isMembership;
        this.isAutoPayment = isAutoPayment;
        this.joinTime = joinTime;
        this.fileInfo = fileInfo;
        this.status = status;
    }

    public UserDTO toDTO() {
        return new UserDTO(id, username, role.name(), isMembership,isAutoPayment,joinTime.toString(),fileInfo.toDTO(), status.name()  );
    }

    public UserResponse toResponse() {
        return new UserResponse(id, username, role.name(), isMembership,isAutoPayment,joinTime.toString(),fileInfo.toDTO(), status.name());
    }
}
