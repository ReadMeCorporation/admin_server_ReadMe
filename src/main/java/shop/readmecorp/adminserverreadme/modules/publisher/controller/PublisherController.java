package shop.readmecorp.adminserverreadme.modules.publisher.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import shop.readmecorp.adminserverreadme.modules.publisher.service.PublisherService;

@Controller
@RequestMapping("/publishers")
public class PublisherController {

    private final PublisherService publisherService;

    public PublisherController(PublisherService publisherService) {
        this.publisherService = publisherService;
    }

    @GetMapping("/books")
    public String bookList(){
        return "/publisher/bookmanage/bookList";
    }

    @GetMapping("/books/detail/{id}")
    public String bookDetail(@PathVariable Integer id){
        return "/publisher/bookmanage/bookDetail";
    }

    @GetMapping("/books/saveForm")
    public String saveForm(){
        return "/publisher/bookmanage/bookSaveForm";
    }

    @GetMapping("/books/Stay")
    public String bokStay(){
        return "/publisher/bookmanage/bookStay";
    }

    @GetMapping("/books/updateForm/{id}")
    public String bookUpdateForm(@PathVariable Integer id){
        return "/publisher/bookmanage/bookUpdateForm";
    }

    @GetMapping("/books/deleteForm/{id}")
    public String bookDeleteForm(@PathVariable Integer id){
        return "/publisher/bookmanage/bookDeleteForm";
    }
}
