package service;

import model.User;

import java.sql.SQLException;
import java.util.List;

public interface IUserService {
    boolean createtUser(User user);
    User selectUser(int id);
    List<User> selectAllUser();
    boolean deleteUser(int id);
    boolean updateUser(User user);
}
