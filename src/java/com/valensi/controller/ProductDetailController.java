/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.valensi.controller;

import com.valensi.model.Product;
import com.valensi.services.ProductService;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author Tri Ananda Putra
 */
@Controller
@RequestMapping("/productdetail")
public class ProductDetailController {
    
    @Autowired
    ProductService ps;
        
    @RequestMapping("/{idProduct}")
    public String showOneCustomer(HttpSession session, @PathVariable Integer idProduct, Model model) {
        Product product = ps.findById(idProduct);
        model.addAttribute("product", product);
        session.setAttribute("addofproduct", product);
        return "productdetail";
    }
    
    @RequestMapping("/addtochart")
    public String addToChart(HttpSession session, Model model){
        List<Product> listOfChart = (List<Product>) session.getAttribute("chart");
        listOfChart.add((Product) session.getAttribute("addofproduct"));
        return "toHomepage";
    }
    
}
