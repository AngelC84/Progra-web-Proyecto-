/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.piapw.dao;

import com.mycompany.piapw.models.Category;
import com.mycompany.piapw.utils.DbConnection;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author jctor
 */
public class CategoryDAO {
    

     public static List<Category> getCategories(){
        
         List<Category> categories = new ArrayList<>();
         
         
         
         try{
         Connection con = DbConnection.getConnection();
         
           String qry = "CALL spCategoria('SelectAll',NULL,NULL);";
        CallableStatement statement = con.prepareCall(qry);
        ResultSet resultSet = statement.executeQuery();
                
             while(resultSet.next()){
             int id = resultSet.getInt("Id_Categoria");
             String nombre = resultSet.getString("Nombre_Categoria");
             categories.add(new Category(id, nombre));
             
             }
         }catch(SQLException ex){
         
             System.out.println(ex.getMessage());
         }finally{
         return categories;
         }
         
         
          
     
     }
       

}
    
    

