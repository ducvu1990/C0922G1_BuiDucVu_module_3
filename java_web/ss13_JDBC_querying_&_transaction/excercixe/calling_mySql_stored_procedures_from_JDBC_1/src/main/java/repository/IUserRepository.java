package repository;

import model.User;

import java.util.List;

public interface IUserRepository {
    List<User> finAllCountryName(String country);
    List<User> finAllOrderUser();
    User getUserById(int id);
    boolean  insertUserStore(User user);
    boolean updateUserStore(User user);
    List<User> getAllUser();
    boolean deleteUserJDBC(int id);
}
