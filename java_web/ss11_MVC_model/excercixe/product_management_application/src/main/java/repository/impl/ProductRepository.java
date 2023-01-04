package repository.impl;

import model.Product;
import repository.IProductRepository;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductRepository implements IProductRepository {
    private static Map<Integer, Product> productMap;
    static {
        productMap = new HashMap<>();
        productMap.put(1, new Product(1,"iphone 1", 15000,"ios 5","apple"));
        productMap.put(2, new Product(2,"iphone 2", 14000,"ios 6","apple"));
        productMap.put(3, new Product(3,"iphone 3", 13000,"ios 7","apple"));
        productMap.put(4, new Product(4,"galasy 4", 12000,"ios 8","samsung"));
        productMap.put(5, new Product(5,"iphone 5", 11000,"ios 9","apple"));
        productMap.put(6, new Product(6,"iphone 6", 16000,"ios 10","apple"));
        productMap.put(7, new Product(7,"iphone 7", 17000,"ios 11","apple"));
    }
    @Override
    public List<Product> finAll() {
        return new ArrayList<>(productMap.values());
    }

    @Override
    public void save(Product product) {
        productMap.put(product.getId(), product);
    }

    @Override
    public Product finById(int id) {
        return productMap.get(id);
    }

    @Override
    public void update(int id, Product product) {
        productMap.put(id, product);
    }

    @Override
    public void remove(int id) {
        productMap.remove(id);
    }
}
