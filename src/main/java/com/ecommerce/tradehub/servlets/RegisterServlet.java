/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.ecommerce.tradehub.servlets;

import com.ecommerce.tradehub.entities.User;
import com.ecommerce.tradehub.helper.FactoryProvider;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author Shadow
 */
public class RegisterServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            try {
                String userName = request.getParameter("user_name");
//                String userLname = request.getParameter("lname");
                String userEmail = request.getParameter("user_email");
                String userPassword = request.getParameter("user_password");
                String confirmPassword = request.getParameter("user_seepassword");
                String userPhone = request.getParameter("user_phone");
                String userAddress = request.getParameter("user_address");
                Boolean userType = request.getParameter("user_type") != null;

                
                
                       // Validate email format
            if (!isValidEmail(userEmail)) {
                request.getSession().setAttribute("message", "Invalid email format!");
                response.sendRedirect("register.jsp");
                return;
            }
            
            // Validate password format
            if (!isValidPassword(userPassword)) {
                request.getSession().setAttribute("message", "Password must contain 8 characters, at least one number, one lowercase letter, one uppercase letter, and one special character.");
                response.sendRedirect("register.jsp");
                return;
            }
            
             if (!passwordsMatch(userPassword, confirmPassword)) {
                 request.getSession().setAttribute("message", "Passwords do not match!");
                 response.sendRedirect("register.jsp");
                 return;
            }
                           
                
                User user = new User(userName, userEmail, userPassword, userPhone, "default.jpg", userAddress, userType, false);

                
                Session hibernateSession = FactoryProvider.getFactory().openSession();
                Transaction tx = hibernateSession.beginTransaction();
                int userId = (int) hibernateSession.save(user);
                tx.commit();
                hibernateSession.close();

                
                HttpSession httpsession = request.getSession();
                httpsession.setAttribute("message", "Registration Successful!!! User ID is: " + userId);
                response.sendRedirect("register.jsp");
                return;
            } catch(Exception e) {
                
                out.println("An error occurred during registration: " + e.getMessage());
                e.printStackTrace();
                return;
            }
        }
    }
    
    
      private boolean isValidEmail(String email) {
    
    // Regular expression pattern for basic email validation
    String emailRegex = "^[a-zA-Z0-9_+&*-]+(?:\\.[a-zA-Z0-9_+&*-]+)*@(?:[a-zA-Z0-9-]+\\.)+[a-zA-Z]{2,7}$";

    // Compile the pattern
    Pattern pattern = Pattern.compile(emailRegex);

    // If email is null or empty, return false
    if (email == null || email.isEmpty()) {
        return false;
    }

    // Match the email against the pattern
    Matcher matcher = pattern.matcher(email);
    return matcher.matches();
}

// Helper method to validate password format
private boolean isValidPassword(String password) {
   
      // Password must contain at least 8 characters
    if (password == null || password.length() < 8) {
        return false;
    }

    // Password must contain at least one uppercase letter, one lowercase letter, one digit, and one special character
    String passwordRegex = "^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%^&+=!])(?=\\S+$).{8,}$";
    
    // Compile the pattern
    Pattern pattern = Pattern.compile(passwordRegex);

    // Match the password against the pattern
    Matcher matcher = pattern.matcher(password);
    return matcher.matches();
      
}
    
 // Helper method to check if password matches confirm password
private boolean passwordsMatch(String password, String confirmPassword) {
    return password.equals(confirmPassword);
}
    
    
    
    
    
    

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
