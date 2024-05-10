/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.ecommerce.tradehub.dao;

import com.ecommerce.tradehub.entities.Product;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

/**
 *
 * @author Shadow
 */
public class ProductDao {
    private SessionFactory factory;
    
    public ProductDao(SessionFactory factory)
    {
        this.factory=factory;
    }
     public boolean saveProduct(Product product)
     {
         boolean f=false;
         try{
             
             Session session = this.factory.openSession();
             Transaction tx = session.beginTransaction();
             
             session.save(product);
             
             
             tx.commit();
             session.close();
             f=true;
             
             
             
         } catch(Exception e){
             e.printStackTrace();
             f=false;
         }
         
         return f;
     }
     
     public List<Product> getAllProducts()
     {
       Session s = this.factory.openSession();
       Query query = s.createQuery("from Product order by rand()");
       query.setMaxResults(10);
       List<Product> list = query.list();
       return list;
     }
     
     public List<Product> getAllProductsbyId(int cid)
     {
       Session s = this.factory.openSession();
       Query query = s.createQuery("from Product as p where p.category.categoryId =:id");
       query.setParameter("id", cid);
       List<Product> list = query.list();
       return list;
     }
     public Product getProductById(int pId){
       Session s = this.factory.openSession();
       Query query = s.createQuery("from Product where pId = :id");
       query.setParameter("id", pId);
       Product product = (Product) query.uniqueResult();
       return product;
     }
     public List<Product> getRelatedProductbyId(int cid, int excludepId) {
       Session s = this.factory.openSession();
       Query query = s.createQuery("from Product where category.categoryId = :categoryId and pId != :excludeProductId");
       query.setParameter("categoryId", cid);
       query.setParameter("excludeProductId", excludepId);
       query.setMaxResults(4);
       List<Product> relatedProducts = query.list();
       return relatedProducts;
     }
    
}
