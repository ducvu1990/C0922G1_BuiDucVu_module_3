package repository;

import model.Customer;

import java.util.List;

public interface ICustomerRepository {
    List<Customer> finAll();
    void seve(Customer customer);
    Customer findById(int id);
    void update(int id, Customer customer);
    void remove(int id);
}
