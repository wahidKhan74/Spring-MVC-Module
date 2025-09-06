CREATE DATABASE IF NOT EXISTS ecommerce CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE ecommerce;

CREATE TABLE IF NOT EXISTS products (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  price DECIMAL(12,2) NOT NULL DEFAULT 0.00,
  quantity INT NOT NULL DEFAULT 0
);

INSERT INTO products (name, price, quantity) VALUES
('Apple iPhone 14', 699.99, 12),
('Samsung Galaxy S23', 649.99, 10),
('Wireless Mouse', 19.99, 120);



Config -> Data source -> JdbcTemplate -> Dao  -> DaoImp -> Service -> Service Imp -> Controller