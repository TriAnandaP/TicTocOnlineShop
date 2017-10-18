/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.valensi.services;

import com.valensi.model.Product;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Tri Ananda Putra
 */
@Repository
@Transactional
public class ProductService {
    
    @PersistenceContext
    private EntityManager em;

    /**
     * @return the em
     */
    public EntityManager getEm() {
        return em;
    }

    /**
     * @param em the em to set
     */
    public void setEm(EntityManager em) {
        this.em = em;
    }
    
    public List<Product> findAll(){
        List<Product> products = em.createNamedQuery("Product.findAll").getResultList();
        return products;
    }
    
    public Product findById(int id){
        Product p = em.find(Product.class, id);
        return p;
    }
}
