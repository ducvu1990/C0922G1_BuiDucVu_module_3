package service.impl;

import model.Product;
import repository.IProductRepository;
import repository.impl.ProductRepository;
import service.IProductService;

import java.util.ArrayList;
import java.util.List;

public class ProductService implements IProductService {
    private final IProductRepository productRepository = new ProductRepository();

    @Override
    public List<Product> finAll() {
        return this.productRepository.finAll();
    }

    @Override
    public void save(Product product) {
        this.productRepository.save(product);
    }

    @Override
    public Product finById(int id) {
        return this.productRepository.finById(id);
    }

    @Override
    public void update(int id, Product product) {
        this.productRepository.update(id, product);
    }

    @Override
    public void remove(int id) {
        this.productRepository.remove(id);
    }
}
