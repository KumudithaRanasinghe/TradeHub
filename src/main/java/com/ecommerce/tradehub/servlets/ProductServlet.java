/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.ecommerce.tradehub.servlets;

import com.ecommerce.tradehub.dao.CategoryDao;
import com.ecommerce.tradehub.dao.ProductDao;
import com.ecommerce.tradehub.entities.Category;
import com.ecommerce.tradehub.entities.Product;
import com.ecommerce.tradehub.helper.FactoryProvider;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

/**
 *
 * @author Shadow
 */
@MultipartConfig
public class ProductServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            String op = request.getParameter("operation");
            op.trim().equals("addproduct");

            String pName = request.getParameter("pName");
            String pDesc = request.getParameter("pDesc");
            int pPrice = Integer.parseInt(request.getParameter("pPrice"));
            int pQuantity = Integer.parseInt(request.getParameter("pQuantity"));
            int catId = Integer.parseInt(request.getParameter("catId"));
            Part part = request.getPart("pPic");

            Product p = new Product();
            p.setpName(pName);
            p.setpDesc(pDesc);
            p.setpPrice(pPrice);
            p.setpQuantity(pQuantity);
            p.setpPhoto(part.getSubmittedFileName());

            CategoryDao cdao = new CategoryDao(FactoryProvider.getFactory());
            Category category = cdao.getCategoryById(catId);

            p.setCategory(category);

            ProductDao pdao = new ProductDao(FactoryProvider.getFactory());
            pdao.saveProduct(p);


            String fileName = getFileName(part);
            InputStream fileContent = part.getInputStream();

            String uploadDir = getServletContext().getRealPath("") + File.separator + "/images/products";
            File dir = new File(uploadDir);
            if (!dir.exists()) {
                dir.mkdirs();
            }

            OutputStream outputStream = new FileOutputStream(new File(uploadDir + File.separator + fileName));
            int read = 0;
            byte[] bytes = new byte[1024];

            while ((read = fileContent.read(bytes)) != -1) {
                outputStream.write(bytes, 0, read);
            }
            outputStream.flush();
            outputStream.close();
            fileContent.close();

            HttpSession httpSession = request.getSession();
            httpSession.setAttribute("message", "Product added successfully");
            response.sendRedirect("account.jsp");      
            return;
        }
    }

    private String getFileName(Part part) {
        for (String cd : part.getHeader("content-disposition").split(";")) {
            if (cd.trim().startsWith("filename")) {
                String fileName = cd.substring(cd.indexOf('=') + 1).trim().replace("\"", "");
                return fileName.substring(fileName.lastIndexOf('/') + 1).substring(fileName.lastIndexOf('\\') + 1);
            }
        }
        return null;
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
