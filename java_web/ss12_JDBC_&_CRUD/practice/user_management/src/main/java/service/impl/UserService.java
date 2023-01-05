package service.impl;

import model.User;
import reporitory.IUserRepository;
import reporitory.impl.UserRepository;
import service.IUserService;

import java.sql.SQLException;
import java.util.List;

public class UserService implements IUserService {
    private final IUserRepository userRepository = new UserRepository();
    @Override
    public boolean createtUser(User user){
        try {
            return this.userRepository.insertUser(user);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public User selectUser(int id) {
        return this.userRepository.selectUser(id);
    }

    @Override
    public List<User> selectAllUser() {
        return userRepository.selectAllUser();
    }

    @Override
    public boolean deleteUser(int id){
        boolean rowDelete = false;
        try {
            rowDelete = this.userRepository.deleteUser(id);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return rowDelete;
    }

    @Override
    public boolean updateUser(User user){
        boolean rowUpdate = false;
        try {
            rowUpdate = this.userRepository.updateUser(user);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return rowUpdate;
    }
}
