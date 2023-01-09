package repository.customerRepository;

import model.customer.Customer;
import model.customer.CustomerType;

import java.util.List;

public interface ICustomerRepository {
    List<Customer> finAllCustomer();

    List<CustomerType> finAllCustomerType();

    boolean createCustomer(Customer customer);
    Customer finCustomer(int id);
    boolean updateCustomer(Customer customer);
    boolean deleteCustomer(int id);
}
