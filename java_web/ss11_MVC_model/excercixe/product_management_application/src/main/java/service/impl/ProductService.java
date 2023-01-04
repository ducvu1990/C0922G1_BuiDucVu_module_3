package service.impl;

import model.Product;
import repository.IProductRepository;
import repository.impl.ProductRepository;
import service.IProductService;

import java.util.ArrayList;
import java.util.List;

public class ProductService implements IProductService {
    private IProductRepository productRepository = new ProductRepository();

    @Override
    public List<Product> finAll() {
        return new ArrayList<>(productRepository.finAll());
    }

    @Override
    public void save(Product product) {
        productRepository.save(product);
    }

    @Override
    public Product finById(int id) {
        return productRepository.finById(id);
    }

    @Override
    public void update(int id, Product product) {
        productRepository.update(id, product);
    }

    @Override
    public void remove(int id) {
        productRepository.remove(id);
    }
}
