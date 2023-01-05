package repository;

import model.User;

import java.util.List;

public interface IUserRepository {
    boolean saveUser(User user);

    User finUser(int id);

    List<User> finAllUser();

    boolean deleteUser(int id);

    boolean updateUser(User user);
    List<User> finAllCountryName(String country);
    List<User> finAllOrderUser();
}
