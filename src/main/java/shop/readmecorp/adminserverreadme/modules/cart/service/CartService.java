package shop.readmecorp.adminserverreadme.modules.cart.service;

import org.springframework.stereotype.Service;
import shop.readmecorp.adminserverreadme.modules.cart.repository.CartRepository;

@Service
public class CartService {

    private final CartRepository cartRepository;

    public CartService(CartRepository cartRepository) {
        this.cartRepository = cartRepository;
    }
}
