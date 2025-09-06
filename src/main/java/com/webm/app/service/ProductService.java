package com.webm.app.service;

import com.webm.app.model.Product;
import java.util.List;

public interface ProductService {
  List<Product> listProducts();
  Product getById(int id);
  void saveProduct(Product product);
  void updateProduct(Product product);
  void deleteProduct(int id);
}
