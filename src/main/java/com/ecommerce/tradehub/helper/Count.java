/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.ecommerce.tradehub.helper;

import java.util.HashMap;
import java.util.Map;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

/**
 *
 * @author Shadow
 */
public class Count {
    
    public static Map<String,Long> getCounts(SessionFactory factory)
    {
       Session session = factory.openSession();
       String q1 = "Select count(*)from User";
       String q2 = "Select count(*)from Product";
        Query query1 = session.createQuery(q1);
        Query query2 = session.createQuery(q2);
        
        
        Long userCount = (Long) query1.list().get(0);
        Long productCount = (Long) query2.list().get(0);
        
        Map<String,Long> map = new HashMap<>();
        map.put("userCount",userCount);
        map.put("productCount",productCount);
        
        session.close();
        return map;
    }
        
    
}
