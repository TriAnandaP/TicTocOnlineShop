/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.valensi.controller;

import com.valensi.model.Product;
import com.valensi.services.ProductService;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/homepage")
public class ProductController {

    @Autowired
    ProductService ps;
    
    List<Product> chart = new ArrayList<>();
    
    @RequestMapping()
    public String showAllProducts(Model model, HttpSession session) {
        List<Product> products = ps.findAll();
        model.addAttribute("product", products);
        session.setAttribute("chart", chart);
        return "product";
    }

}
