package repository.customerRepository.impl;

import model.customer.Customer;
import model.customer.CustomerType;
import repository.BaseRepository.BaseRepository;
import repository.customerRepository.ICustomerRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class CustomerRepository implements ICustomerRepository {
    private final String SELECT_ALL_CUSTOMER = "select c.*, customer_type.id as type_id, customer_type.name as name_type\n" +
            "from customer c join customer_type on c.customer_type_id = customer_type.id";
    private final String SELEC_ALL_CUSTOMER_TYPE = "select * from customer_type";
    private final String INSERT_CUSTOMER = "insert into customer set customer_type_id = ?,name = ?,birthday = ?,gender = ?," +
            "id_card = ?,phone_number = ?,email = ?,address = ?";
    private final String SELEC_CUSTOMER = "select c.*, customer_type.id as type_id, customer_type.name as name_type " +
            "from customer c join customer_type on c.customer_type_id = customer_type.id where c.id = ?";
    private final String UPDATE_CUSTOMER = "update customer set customer_type_id = ?,name = ?,birthday = ?," +
            "gender = ?, id_card = ?,phone_number = ?,email = ?,address = ? " +
            "where id = ?";
    private static final String DELETE_USERS_SQL = "delete from customer where id = ?";

    @Override
    public List<Customer> finAllCustomer() {
        List<Customer> customers = new ArrayList<>();

        Connection connection = BaseRepository.getConnectDB();
        PreparedStatement preparedStatement;
        try {
            preparedStatement = connection.prepareStatement(SELECT_ALL_CUSTOMER);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                java.sql.Date dateOfBirth = rs.getDate("birthday");
                boolean gender = rs.getBoolean("gender");
                String idCard = rs.getString("id_card");
                String phoneNumber = rs.getString("phone_number");
                String email = rs.getString("email");
                String address = rs.getString("address");

                int typeId = rs.getInt("type_id");
                String nameType = rs.getString("name_type");
                CustomerType customerType = new CustomerType(typeId, nameType);

                customers.add(new Customer(id, name, dateOfBirth, gender, idCard, phoneNumber, email, customerType, address));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return customers;
    }

    @Override
    public List<CustomerType> finAllCustomerType() {
        List<CustomerType> customerTypes = new ArrayList<>();
        Connection connection = BaseRepository.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SELEC_ALL_CUSTOMER_TYPE);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String nameType = rs.getString("name");
                customerTypes.add(new CustomerType(id, nameType));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return customerTypes;
    }


    //customer_type_id = ?,name = ?,birthday = ?,gender = ?," +
    //            "id_card = ?,phone_number = ?,email = ?,address = ?
    @Override
    public boolean createCustomer(Customer customer) {
        Connection connection = BaseRepository.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_CUSTOMER);
            preparedStatement.setInt(1, customer.getCustomerType().getId());
            preparedStatement.setString(2, customer.getName());
            preparedStatement.setDate(3, customer.getBirthday());
            preparedStatement.setBoolean(4, customer.isGender());
            preparedStatement.setString(5, customer.getIdCard());
            preparedStatement.setString(6, customer.getPhone());
            preparedStatement.setString(7, customer.getEmail());
            preparedStatement.setString(8, customer.getAddress());
            return preparedStatement.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public Customer finCustomer(int id) {
        Connection connection = BaseRepository.getConnectDB();
        Customer customers = null;
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SELEC_CUSTOMER);
            preparedStatement.setInt(1,id);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()){
                String name = rs.getString("name");
                java.sql.Date dateOfBirth = rs.getDate("birthday");
                boolean gender = rs.getBoolean("gender");
                String idCard = rs.getString("id_card");
                String phoneNumber = rs.getString("phone_number");
                String email = rs.getString("email");
                String address = rs.getString("address");

                int typeId = rs.getInt("type_id");
                String nameType = rs.getString("name_type");
                CustomerType customerType = new CustomerType(typeId, nameType);

                customers = new Customer(id, name, dateOfBirth, gender, idCard, phoneNumber, email, customerType, address);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return customers;
    }

    @Override
    public boolean updateCustomer(Customer customer) {
        Connection connection = BaseRepository.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(UPDATE_CUSTOMER);
            preparedStatement.setInt(1, customer.getCustomerType().getId());
            preparedStatement.setString(2, customer.getName());
            preparedStatement.setDate(3, customer.getBirthday());
            preparedStatement.setBoolean(4, customer.isGender());
            preparedStatement.setString(5, customer.getIdCard());
            preparedStatement.setString(6, customer.getPhone());
            preparedStatement.setString(7, customer.getEmail());
            preparedStatement.setString(8, customer.getAddress());
            preparedStatement.setInt(9,customer.getId());
            return preparedStatement.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean deleteCustomer(int id) {
        Connection connection = BaseRepository.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(DELETE_USERS_SQL);
            preparedStatement.setInt(1, id);
            return preparedStatement.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }
}
