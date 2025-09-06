package com.webm.app.rowmapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.webm.app.model.Product;
import org.springframework.jdbc.core.RowMapper;

public class ProductRowMapper implements RowMapper<Product> {

  @Override
  public Product mapRow(ResultSet rs, int rowNum) throws SQLException {
    Product p = new Product();
    p.setId(rs.getInt("id"));
    p.setName(rs.getString("name"));
    p.setPrice(rs.getDouble("price"));
    p.setQuantity(rs.getInt("quantity"));
    return p;
  }
}
