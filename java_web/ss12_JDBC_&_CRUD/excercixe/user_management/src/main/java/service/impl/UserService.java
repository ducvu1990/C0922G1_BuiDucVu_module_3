package service.impl;

import model.User;
import repository.IUserRepository;
import repository.impl.UserRepository;
import service.IUserService;

import java.util.List;

public class UserService implements IUserService {
    private final IUserRepository userRepository = new UserRepository();
    @Override
    public boolean saveUser(User user) {
       return userRepository.saveUser(user);
    }

    @Override
    public User finUser(int id) {
        return userRepository.finUser(id);
    }

    @Override
    public List<User> finAllUser() {
        return userRepository.finAllUser();
    }

    @Override
    public boolean deleteUser(int id) {
        return userRepository.deleteUser(id);
    }

    @Override
    public boolean updateUser(User user) {
        return userRepository.updateUser(user);
    }

    @Override
    public List<User> finAllCountryName(String country) {
        return this.userRepository.finAllCountryName(country);
    }

    @Override
    public List<User> finAllOrderUser() {
        return this.userRepository.finAllOrderUser();
    }
}
