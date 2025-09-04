package com.webm.app.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HomeController {

  @GetMapping("/")
  public String indexMapping(Model model) {
    model.addAttribute("message", "Welcome to Spring MVC development");
    return "index";
  }

  @GetMapping("/hello")
  public String helloMapping(@RequestParam(defaultValue = "world") String name ,  Model model) {
    model.addAttribute("name", name);
    return "hello";
  }
}
