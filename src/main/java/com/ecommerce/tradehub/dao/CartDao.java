/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.ecommerce.tradehub.dao;

import com.ecommerce.tradehub.entities.Cart;
import com.ecommerce.tradehub.entities.Product;
import java.util.List;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.JoinType;
import javax.persistence.criteria.Root;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

/**
 *
 * @author dusha
 */
public class CartDao {

    private final SessionFactory sessionFactory;
    private final Configuration configuration;

    public CartDao() {

        configuration = new Configuration().configure();
        this.sessionFactory = configuration.buildSessionFactory();
    }

    public List<Cart> getAllItems() {
        try (Session session = sessionFactory.openSession()) {
            CriteriaBuilder builder = session.getCriteriaBuilder();
            CriteriaQuery<Cart> criteriaQuery = builder.createQuery(Cart.class);
            Root<Cart> root = criteriaQuery.from(Cart.class);
            //root.fetch("product", JoinType.LEFT);

            criteriaQuery.select(root);
            Query<Cart> query = session.createQuery(criteriaQuery);
            return query.getResultList();
        } catch (Exception e) {
            return null;
        }
    }

    public List<Cart> getItemsById(int u_id) {

        try (Session session = sessionFactory.openSession()) {
            session.beginTransaction();
            Query query = session.createQuery("from Cart where u_id = :id");
            query.setParameter("id", u_id);
            List<Cart> items = query.list();

            session.getTransaction().commit();
            session.close();
            return items;

        } catch (Exception e) {
            return null;
        }

    }

    public int getItemCountById(int u_id) {
          try (Session session = sessionFactory.openSession()) {
            session.beginTransaction();
            Query query = session.createQuery("from Cart where u_id = :id");
            query.setParameter("id", u_id);
            List<Cart> items = query.list();

            session.getTransaction().commit();
            session.close();
            return items.size();

        } catch (Exception e) {
            return -1;
        }
    }

    public void deleteItem(int itemId) {

        Session session = sessionFactory.openSession();
        Transaction tx = null;

        try {
            tx = session.beginTransaction();

            Cart itemToDelete = session.get(Cart.class, itemId);

            if (itemToDelete != null) {
                session.delete(itemToDelete);
                tx.commit();
            }

        } catch (HibernateException e) {
            if (tx != null) {
                tx.rollback();
            }
        } finally {
            session.close();
        }
    }

}
