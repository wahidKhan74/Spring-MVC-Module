package com.webm.app.service;

import com.webm.app.dao.ProductDAO;
import com.webm.app.model.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductServiceImpl implements  ProductService{

  @Autowired
  private ProductDAO productDAO;

  @Override
  public List<Product> listProducts() {
    return productDAO.getAllProducts();
  }

  @Override
  public Product getById(int id) {
    return productDAO.getProductById(id);
  }

  @Override
  public void saveProduct(Product product) {
    productDAO.addProduct(product);
  }

  @Override
  public void updateProduct(Product product) {
    productDAO.updateProduct(product);
  }

  @Override
  public void deleteProduct(int id) {
    productDAO.deleteProduct(id);
  }
}
