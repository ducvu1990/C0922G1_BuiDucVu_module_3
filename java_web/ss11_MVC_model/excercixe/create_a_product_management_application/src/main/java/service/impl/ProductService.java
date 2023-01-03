package service.impl;

import model.Product;
import service.IProductService;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductService implements IProductService {
    private static Map<Integer, Product> productMap;
    static {
        productMap = new HashMap<>();
        productMap.put(1, new Product(1,"iphone","blue",17000));
        productMap.put(2, new Product(2,"nokia","white",14000));
        productMap.put(3, new Product(3,"samsung","black",14500));
        productMap.put(4, new Product(4,"oppo","violet",13000));
        productMap.put(5, new Product(5,"motorola","yellow",16000));
    }
    @Override
    public List<Product> finAll() {
        return new ArrayList<>(productMap.values());
    }

    @Override
    public void save(Product product) {
        productMap.put(product.getId(),product);
    }

    @Override
    public Product finById(int id) {
        return productMap.get(id);
    }

    @Override
    public void update(int id, Product product) {
        productMap.put(id,product);
    }

    @Override
    public void remove(int id) {
        productMap.remove(id);
    }
}
