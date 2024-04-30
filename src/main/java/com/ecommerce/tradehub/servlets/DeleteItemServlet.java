/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.ecommerce.tradehub.servlets;

import com.ecommerce.tradehub.entities.Cart;
import static com.mysql.cj.conf.PropertyKey.logger;
import java.io.IOException;
import java.io.PrintWriter;
import javax.mail.FetchProfile.Item;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author dusha
 */
public class DeleteItemServlet extends HttpServlet {

    private SessionFactory sessionFactory;
    Transaction transaction;
    Session session;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            session = sessionFactory.openSession();
            transaction = session.beginTransaction();

            String id = request.getParameter("id");

         
            Criteria criteria = session.createCriteria(Item.class);
            criteria.add(Restrictions.eq("cart_id", id)); // Search by name property

            Cart itemToDelete = (Cart) criteria.uniqueResult(); 

            if (itemToDelete != null) {
                session.delete(itemToDelete);
                transaction.commit();
                response.sendRedirect("cart.jsp");
            } else {
                // Handle the case where the item with the name is not found
            }

        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
           
        } finally {
            if (session != null) {
                session.close();
            }
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
