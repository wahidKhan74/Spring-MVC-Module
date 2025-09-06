package com.webm.app.dao;

import com.webm.app.model.Product;
import com.webm.app.rowmapper.ProductRowMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class ProductDAOImpl implements  ProductDAO {

  @Autowired
  private JdbcTemplate jdbcTemplate;

  @Override
  public List<Product> getAllProducts() {
    String sql = "SELECT id, name, price, quantity FROM products ORDER BY id";
    return jdbcTemplate.query(sql, new ProductRowMapper());
  }

  @Override
  public Product getProductById(int id) {
    String sql = "SELECT id, name, price, quantity FROM products WHERE id = ?";
    return jdbcTemplate.queryForObject(sql, new Object[]{id}, new ProductRowMapper());
  }

  @Override
  public void addProduct(Product product) {
    String sql = "INSERT INTO products (name, price, quantity) VALUES (?, ?, ?)";
    jdbcTemplate.update(sql, product.getName(), product.getPrice(), product.getQuantity());
  }

  @Override
  public void updateProduct(Product product) {
    String sql = "UPDATE products SET name=?, price=?, quantity=? WHERE id=?";
    jdbcTemplate.update(sql, product.getName(), product.getPrice(), product.getQuantity(), product.getId());
  }

  @Override
  public void deleteProduct(int id) {
    String sql = "DELETE FROM products WHERE id=?";
    jdbcTemplate.update(sql, id);
  }
}
