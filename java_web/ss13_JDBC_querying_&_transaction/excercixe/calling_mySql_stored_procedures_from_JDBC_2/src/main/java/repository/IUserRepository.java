package repository;

import model.User;

import java.util.List;

public interface IUserRepository {
    boolean insertUser(User user);

    User selectUser(int id);

    List<User> selectAllUser();

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
