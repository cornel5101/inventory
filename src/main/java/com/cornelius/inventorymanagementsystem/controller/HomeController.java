package com.cornelius.inventorymanagementsystem.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.cornelius.inventorymanagementsystem.entities.Brands;
import com.cornelius.inventorymanagementsystem.entities.Categories;
import com.cornelius.inventorymanagementsystem.services.AppService;


/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	  
  @Autowired
  AppService service;

    @GetMapping("/")
    public String getHome(ModelMap model) {
        model.addAttribute("user", new Brands());
        model.addAttribute("categoryItems", service.getCaterepo().findAll());
        return "dashboard";
    }
    
    @PostMapping("/saveCategory")
    public String saveCategory(@ModelAttribute("Category") Categories category, ModelMap model) {
		service.getCaterepo().save(category);
		
    		return "dashboard";
    		

    }
}
