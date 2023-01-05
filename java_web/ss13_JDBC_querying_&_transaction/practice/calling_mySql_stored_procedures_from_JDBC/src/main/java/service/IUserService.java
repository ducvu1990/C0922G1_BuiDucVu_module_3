package service;

import model.User;

import java.util.List;

public interface IUserService {
    boolean saveUser(User user);
    User finUser(int id);
    List<User> finAllUser();
    boolean deleteUser(int id);
    boolean updateUser(User user);
    List<User> finAllCountryName(String country);
    List<User> finAllOrderUser();
    User getUserById(int id);
    boolean  insertUserStore(User user);
    void addUserTransaction(User user, int[] permision);
    public void insertUpdateWithoutTransaction();
    boolean updateUserStore(User user);
    List<User> getAllUser();
    boolean deleteUserJDBC(int id);
}
