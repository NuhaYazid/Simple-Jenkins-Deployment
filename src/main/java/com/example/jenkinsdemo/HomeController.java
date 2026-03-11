package com.example.jenkinsdemo;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

    @GetMapping("/")
    public String home(Model model) {
        model.addAttribute("message", "Hello! Deployed via Jenkins + Tomcat!");
        return "home"; // → resolves to /WEB-INF/views/home.jsp
    }
}
