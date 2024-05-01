/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.ecommerce.tradehub.dao;

import com.ecommerce.tradehub.entities.User;
import com.ecommerce.tradehub.helper.FactoryProvider;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

/**
 *
 * @author Shadow
 */
public class UserDao {

    private final SessionFactory factory;

    public UserDao(SessionFactory factory) {
        this.factory = factory;
    }

    public User getUserByEmailandPassword(String email, String password) {
        User user = null;

        try {
            String query = "from User where userEmail = :e and userPassword = :p";
            try (Session session = this.factory.openSession()) {
                Query q = session.createQuery(query);
                q.setParameter("e", email);
                q.setParameter("p", password);

                user = (User) q.uniqueResult();
                System.out.println("User fetched: " + user);
            }
        } catch (Exception e) {
            System.err.println("Error fetching user: " + e.getMessage());
        }
        return user;
    }

    public List<User> getUsers() {
        try (Session session = this.factory.openSession()) {
            Query query = session.createQuery("from User");
            List<User> Users = query.list();
            return Users;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

}
