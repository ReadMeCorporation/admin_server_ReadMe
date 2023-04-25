package shop.readmecorp.adminserverreadme.modules.user.service;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import shop.readmecorp.adminserverreadme.modules.user.entity.User;
import shop.readmecorp.adminserverreadme.modules.user.enums.UserStatus;
import shop.readmecorp.adminserverreadme.modules.user.request.UserUpdateRequest;
import shop.readmecorp.adminserverreadme.modules.user.entity.User;
import shop.readmecorp.adminserverreadme.modules.user.repository.UserRepository;

import java.util.Optional;

@Service
public class UserService {

    private final UserRepository userRepository;

    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    public Page<User> getPage(Pageable pageable) {
        return userRepository.findAll(pageable);
    }

    public Optional<User> getUser(Integer id) {
        return userRepository.findById(id);
    }

    @Transactional
    public User updateState(UserUpdateRequest request, User user) {
        user.setStatus(UserStatus.valueOf(request.getStatus()));
        return userRepository.save(user);
    }
}
