package shop.readmecorp.adminserverreadme.modules.admin.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import shop.readmecorp.adminserverreadme.modules.admin.service.AdminService;

@RestController
@RequestMapping("/api/admins")
public class AdminApiController {

    private final AdminService adminService;

    public AdminApiController(AdminService adminService) {
        this.adminService = adminService;
    }


}
