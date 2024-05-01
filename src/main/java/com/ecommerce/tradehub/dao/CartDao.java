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

    public void addItem(int p_id, int u_id, int qt) {

        Transaction tx = null;

        try (Session session = sessionFactory.openSession()) {
            tx = session.beginTransaction();
            String sql = "INSERT INTO cart(p_id,u_id,cart_quantity) VALUES (:p_id, :u_id, :cart_quantity)";
            session.createNativeQuery(sql)
                    .setParameter("p_id", p_id)
                    .setParameter("u_id", u_id)
                    .setParameter("cart_quantity", qt)
                    .executeUpdate();
            tx.commit();
            session.close();
        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
            }
        }

//        response.sendRedirect("success.jsp");
    }

    public int isItemExists(int p_Id, int u_Id) {

              try (Session session = sessionFactory.openSession()) {
            session.beginTransaction();
            Query query = session.createQuery("from Cart where p_id = :p_id and u_id = :u_id");
            query.setParameter("p_id", p_Id);
            query.setParameter("u_id", u_Id);
            List<Cart> items = query.list();

            session.getTransaction().commit();
            session.close();
            return items.size();

        } catch (Exception e) {
            return -1;
        }

    }

    public List<Cart> getItemIdAndQt(int p_id, int u_id) {

        try (Session session = sessionFactory.openSession()) {
            session.beginTransaction();
            Query query = session.createQuery("from Cart where u_id = :u_id and p_id= :p_id");
            query.setParameter("u_id", u_id);
            query.setParameter("p_id", p_id);
            List<Cart> items = query.list();

            session.getTransaction().commit();
            session.close();
            return items;

        } catch (Exception e) {
            return null;
        }

    }

    public boolean updateCart(int cart_id, int qt) {
        Transaction tx = null;

        try (Session session = sessionFactory.openSession()) {
            tx = session.beginTransaction();
            String sql = "UPDATE cart SET cart_quantity = :cart_quantity WHERE cart_id = :cart_id";
            int rowsUpdated = session.createNativeQuery(sql)
                    .setParameter("cart_quantity", qt)
                    .setParameter("cart_id", cart_id)
                    .executeUpdate();
            tx.commit();
            session.close();
            if (rowsUpdated > 0) {

                return true;

            } else {
                return false;
            }
        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
            }

        }
        return false;
    }

}
