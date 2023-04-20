package shop.readmecorp.adminserverreadme.modules.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import shop.readmecorp.adminserverreadme.modules.admin.service.AdminService;

@Controller
@RequestMapping("/admins")
public class AdminController {

    private final AdminService adminService;

    public AdminController(AdminService adminService) {
        this.adminService = adminService;
    }

    @GetMapping("/books")
    public String bookList(){
        return "/admin/bookmanage/bookList";
    }

    @GetMapping("/books/detail/{id}")
    public String bookDetail(@PathVariable Integer id){
        return "/admin/bookmanage/bookDetail";
    }
}
