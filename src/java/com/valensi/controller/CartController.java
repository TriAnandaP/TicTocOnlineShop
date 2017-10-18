/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.valensi.controller;

import com.valensi.model.Product;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/valueofchart")
public class CartController {

    @RequestMapping
    public String valueofCart() {
        return "cart";
    }

    @RequestMapping("/delete/{idProduct}")
    public String deleteCart(HttpSession session, @PathVariable Integer idProduct) {
        List<Product> cart = (List<Product>) session.getAttribute("chart");
        int buffer = 0;
        for (int i = 0; i < cart.size(); i++) {
            if (cart.get(i).getIdProduct() == idProduct) {
                buffer = i;
            }
        }
        cart.remove(buffer);
        return "toCart";
    }
}
