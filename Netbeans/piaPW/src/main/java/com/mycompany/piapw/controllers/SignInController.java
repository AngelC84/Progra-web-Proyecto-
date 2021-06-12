/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.piapw.controllers;

import com.mycompany.piapw.dao.UserDAO;
import com.mycompany.piapw.models.User;
import com.mycompany.piapw.utils.FileUtils;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;


/**
 *
 * @author jctor
 */
@WebServlet(name = "SignInController", urlPatterns = {"/SignInController"})
@MultipartConfig(maxFileSize = -1, maxRequestSize = -1)


public class SignInController extends HttpServlet {



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
        
        String Nombre = request.getParameter("Nombre");
        String ApellidoP = request.getParameter("ApellidoP");
        String ApellidoM = request.getParameter("ApellidoM");
        String fechadenaciemiento = request.getParameter("fechadenaciemiento");
         String Correo = request.getParameter("Correo");
        String Usuario = request.getParameter("Usuario");
        String Contraseña = request.getParameter("Contrasena");
        
        SimpleDateFormat format =  new SimpleDateFormat("yyyy-MM-dd");
        
       long l = 0;
      try {
     l = format.parse(fechadenaciemiento).getTime();
    } catch (ParseException ex) {
           Logger.getLogger(SignInController.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        Date date = new Date(l);
        
         
     
        
        
        String path = request.getServletContext().getRealPath("");   
        File fileSaveDir = new File(path + FileUtils.RUTE_USER_IMAGE);
        
        if(!fileSaveDir.exists()){
            fileSaveDir.mkdir();
        }
        
        Part file = request.getPart("Fotografia");
        String contentType = file.getContentType();
      String nameImage = file.getName() + System.currentTimeMillis() + FileUtils.GetExtension(contentType);
       String fullPath = path + FileUtils.RUTE_USER_IMAGE + "/" + nameImage;
       file.write(fullPath);
       
       
        
        User user = new User(Nombre, ApellidoP, ApellidoM, fechadenaciemiento, Correo, fullPath, Usuario, Contraseña);
          
       if(UserDAO.insertUSer(user)==1){
        response.sendRedirect("login.jsp");
          }else{
          
          }
             
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
