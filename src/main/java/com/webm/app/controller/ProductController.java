package com.webm.app.controller;

import com.webm.app.model.Product;
import com.webm.app.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/products")
public class ProductController {

  @Autowired
  private ProductService productService;

  @GetMapping({"", "/"})
  public String listProduct(Model model) {
    model.addAttribute("products", productService.listProducts());
    return "products";
  }

  // Show add form
  @GetMapping("/add")
  public String addProductForm(Model model) {
    model.addAttribute("product", new Product());
    return "addProduct";
  }

  // Handle add submit
  @PostMapping("/add")
  public String addProduct(@ModelAttribute Product product) {
    productService.saveProduct(product);
    return "redirect:/products";
  }

  // Edit form (optional)
  @GetMapping("/edit/{id}")
  public String editForm(@PathVariable("id") int id, Model model) {
    Product p = productService.getById(id);
    model.addAttribute("product", p);
    return "addProduct";
  }

  // Handle update (re-use addProduct endpoint by checking id)
  @PostMapping("/update")
  public String updateProduct(@ModelAttribute Product product) {
    if (product.getId() > 0) {
      productService.updateProduct(product);
    } else {
      productService.saveProduct(product);
    }
    return "redirect:/products";
  }

  // Delete
  @GetMapping("/delete/{id}")
  public String deleteProduct(@PathVariable("id") int id) {
    productService.deleteProduct(id);
    return "redirect:/products";
  }
}
