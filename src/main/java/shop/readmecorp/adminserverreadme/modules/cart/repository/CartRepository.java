package shop.readmecorp.adminserverreadme.modules.cart.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import shop.readmecorp.adminserverreadme.modules.cart.entity.Cart;

public interface CartRepository extends JpaRepository<Cart, Integer> {
}
