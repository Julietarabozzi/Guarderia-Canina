package com.tc_software.tp_integrador.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

    @GetMapping("/")
    public String home(Model model) {
        model.addAttribute("animal", "¡Bienvenido Guarderia de Mascotas!");
        return "home";
    }
}

