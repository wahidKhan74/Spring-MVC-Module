package com.webm.app.config;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import javax.sql.DataSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class AppConfig {

  // Change these values to match your MySQL DB
  private static final String URL = "jdbc:mysql://localhost:3306/ecommerce?useSSL=false&serverTimezone=UTC";
  private static final String USER = "root";
  private static final String PASS = "root";

  @Bean
  public DataSource dataSource() {
    DriverManagerDataSource ds = new DriverManagerDataSource();
    ds.setDriverClassName("com.mysql.cj.jdbc.Driver");
    ds.setUrl(URL);
    ds.setUsername(USER);
    ds.setPassword(PASS);
    return ds;
  }

  @Bean
  public JdbcTemplate jdbcTemplate(DataSource ds) {
    return new JdbcTemplate(ds);
  }
}
