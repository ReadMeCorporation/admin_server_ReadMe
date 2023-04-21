package shop.readmecorp.adminserverreadme.modules.admin.service;

import org.springframework.stereotype.Service;
import shop.readmecorp.adminserverreadme.common.exception.CustomException;
import shop.readmecorp.adminserverreadme.modules.admin.entity.Admin;
import shop.readmecorp.adminserverreadme.modules.admin.enums.AdminStatus;
import shop.readmecorp.adminserverreadme.modules.admin.repository.AdminRepository;
import shop.readmecorp.adminserverreadme.modules.admin.request.AdminLoginRequest;

import java.util.Optional;

@Service
public class AdminService {

    private final AdminRepository adminRepository;

    public AdminService(AdminRepository adminRepository) {
        this.adminRepository = adminRepository;
    }

    public Admin login(AdminLoginRequest request) {

        Optional<Admin> principal = adminRepository.findByUsernameAndPassword(request.getUsername(), request.getPassword());

        if (principal == null || principal.isEmpty()){
            throw new CustomException("존재하지 않는 아이디거나 비밀번호를 다시 확인해주시기 바랍니다.");
        }

        if (principal.get().getStatus() == AdminStatus.DELETE){
            throw new CustomException("비활성화된 계정입니다.");
        }

        return principal.get();
    }
}
