package shop.readmecorp.adminserverreadme.modules.payment.controller;

import org.springframework.web.bind.annotation.RestController;
import shop.readmecorp.adminserverreadme.modules.payment.service.BookPaymentService;

@RestController
public class BookPaymentController {

    private final BookPaymentService bookPaymentService;

    public BookPaymentController(BookPaymentService bookPaymentService) {
        this.bookPaymentService = bookPaymentService;
    }
}
