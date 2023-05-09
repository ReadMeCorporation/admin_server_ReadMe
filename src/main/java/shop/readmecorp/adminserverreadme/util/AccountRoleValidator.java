package shop.readmecorp.adminserverreadme.util;

import org.springframework.stereotype.Component;
import shop.readmecorp.adminserverreadme.common.exception.CustomException;

import javax.servlet.http.HttpSession;

@Component
public class AccountRoleValidator {

    private final HttpSession session;

    public AccountRoleValidator(HttpSession session) {
        this.session = session;
    }

    public void validateAdminRole() {
        Object principal = session.getAttribute("principal");
        String userRole = (String) session.getAttribute("userRole");
        if (principal == null) {
            throw new CustomException("로그인을 해주세요");
        }
        if (!"admin".equals(userRole)) {
            throw new CustomException("관리자 권한이 필요합니다");
        }
    }

    public void validatePublisherRole() {
        Object principal = session.getAttribute("principal");
        String userRole = (String) session.getAttribute("userRole");
        if (principal == null) {
            throw new CustomException("로그인을 해주세요");
        }
        if (!"publisher".equals(userRole)) {
            throw new CustomException("출판사 계정이 아닙니다");
        }
    }
}
