package service.customerService.impl;

import model.customer.Customer;
import model.customer.CustomerType;
import repository.customerRepository.ICustomerRepository;
import repository.customerRepository.impl.CustomerRepository;
import service.customerService.ICustomerService;

import java.util.List;

public class CustomerService implements ICustomerService {
    private final ICustomerRepository customerRepository = new CustomerRepository();

    @Override
    public List<Customer> finAllCustomer() {
        return customerRepository.finAllCustomer();
    }

    @Override
    public List<CustomerType> finAllCustomerType() {
        return this.customerRepository.finAllCustomerType();
    }

    @Override
    public boolean createCustomer(Customer customer) {
        return this.customerRepository.createCustomer(customer);
    }

    @Override
    public Customer finCustomer(int id) {
        return customerRepository.finCustomer(id);
    }

    @Override
    public boolean updateCustomer(Customer customer) {
        return customerRepository.updateCustomer(customer);
    }

    @Override
    public boolean deleteCustomer(int id) {
        return customerRepository.deleteCustomer(id);
    }
}
