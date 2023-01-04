package repository;

import model.Product;

import java.util.List;

public interface IProductRepository {
    List<Product> finAll();
    void save(Product product);
    Product finById(int id);
    void update(int id, Product product);
    void remove(int id);
}
