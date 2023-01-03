package repository.impl;

import model.Customer;
import repository.ICustomerRepository;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class CustomerRepository implements ICustomerRepository {
    private static Map<Integer, Customer> customerMap;
    static {
        customerMap = new HashMap<>();
        customerMap.put(1, new Customer(1,"vu", "john@abc.com","Quang Tri"));
        customerMap.put(2, new Customer(2,"hoai", "john@abc.com","Binh Dinh"));
        customerMap.put(3, new Customer(3,"tay", "john@abc.com","Phu Yen"));
        customerMap.put(4, new Customer(4,"huy", "john@abc.com","Binh Dinh"));
        customerMap.put(5, new Customer(5,"toan", "john@abc.com","Binh Dinh"));
        customerMap.put(6, new Customer(6,"hau", "john@abc.com","Quang Nam"));
    }

    @Override
    public List<Customer> finAll() {
        return new ArrayList<>(customerMap.values());
    }

    @Override
    public void seve(Customer customer) {
        customerMap.put(customer.getId(),customer);
    }

    @Override
    public Customer findById(int id) {
        return customerMap.get(id);
    }

    @Override
    public void update(int id, Customer customer) {

    }

    @Override
    public void remove(int id) {

    }
}
