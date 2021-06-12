/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.piapw.dao;

import com.mycompany.piapw.models.User;
import com.mycompany.piapw.utils.DbConnection;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author jctor
 */
public class UserDAO {
    
    public static int insertUSer(User user){
        try{
        Connection con = DbConnection.getConnection();
        String qry = "CALL spUsuario('Insert',?,?,?,?,?,?,?,?,1);";
        CallableStatement statement = con.prepareCall(qry);
        
       statement.setString(1, user.getUsuario());
       statement.setString(2, user.getNombre());
       statement.setString(3, user.getApellidoP());
       statement.setString(4, user.getApellidoM());
        statement.setString(5, user.getContra());
        
       // java.util.Date uFechaNac = user.getFechaNac();
      //  java.sql.Date sqlFechaNac = new java.sql.Date(uFechaNac.getTime());
        
         statement.setString(6, user.getFechaNac());
        
        statement.setString(7, user.getCorreo());
        statement.setString(8, user.getImgPerfil());
       
       
        return statement.executeUpdate();
        
        
        }catch(SQLException exc){
            
            System.out.println(exc.getMessage());
        }
        
        return 0;
    }
    
    
    public static User logInUser(User user){
    
        try{
            
            Connection con = DbConnection.getConnection();
             String qry = "CALL spUsuario('LoginUsuario',?,NULL,NULL,NULL,?,NULL,NULL,NULL,NULL);";
        CallableStatement statement = con.prepareCall(qry);
         
        statement.setString(1, user.getUsuario());
        statement.setString(2, user.getContra());
        
        ResultSet resultSet = statement.executeQuery();
                
                while(resultSet.next()){
                String username = resultSet.getString("Id_Usuario");
                String password = resultSet.getString("Contrasenia");
                 return new User(username, password);
                }
        
        }catch(SQLException exc){
         System.out.println(exc.getMessage());
        }
    return null;
    }
    
}
