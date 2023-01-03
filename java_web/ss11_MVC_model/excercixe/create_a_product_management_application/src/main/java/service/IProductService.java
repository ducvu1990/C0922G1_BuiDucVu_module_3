package service;

import model.Product;

import java.util.List;

public interface IProductService {
    List<Product> finAll();
    void save(Product product);
    Product finById(int id);
    void update(int id, Product product);
    void remove(int id);
}
