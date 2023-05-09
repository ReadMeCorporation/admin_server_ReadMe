package shop.readmecorp.adminserverreadme.modules.banner.repository;


import org.springframework.data.jpa.repository.JpaRepository;
import shop.readmecorp.adminserverreadme.modules.banner.entity.Banner;

public interface BannerRepository extends JpaRepository<Banner, Integer> {
}
