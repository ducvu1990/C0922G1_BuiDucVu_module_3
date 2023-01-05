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
        return userRepository.insertUser(user);
    }

    @Override
    public User finUser(int id) {
        return userRepository.selectUser(id);
    }

    @Override
    public List<User> finAllUser() {
        return userRepository.selectAllUser();
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

    @Override
    public User getUserById(int id) {
        return userRepository.getUserById(id);
    }

    @Override
    public boolean insertUserStore(User user) {
        return userRepository.insertUserStore(user);
    }

    @Override
    public void addUserTransaction(User user, int[] permision) {
        this.userRepository.addUserTransaction(user,permision);
    }

    @Override
    public void insertUpdateWithoutTransaction() {
        userRepository.insertUpdateWithoutTransaction();
    }

    @Override
    public boolean updateUserStore(User user) {
        return userRepository.updateUserStore(user);
    }

    @Override
    public List<User> getAllUser() {
        return userRepository.getAllUser();
    }

    @Override
    public boolean deleteUserJDBC(int id) {
        return userRepository.deleteUserJDBC(id);
    }
}
