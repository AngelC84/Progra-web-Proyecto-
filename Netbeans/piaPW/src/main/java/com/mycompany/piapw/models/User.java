/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.piapw.models;

import java.sql.Date;

/**
 *
 * @author jctor
 */
public class User {
    
    private String nombre;
    private String apellidoP;
    private String apellidoM;
    private String fechaNac;
    private String correo;
    private String imgPerfil;
    private String usuario;
    private String contra;

    
    public User(){
    
    }
    
    public User(String nombre, String apellidoP, String apellidoM, String fechaNac, String correo, String imgPerfil, String usuario, String contra) {
        this.nombre = nombre;
        this.apellidoP = apellidoP;
        this.apellidoM = apellidoM;
        this.fechaNac = fechaNac;
        this.correo = correo;
        this.imgPerfil = imgPerfil;
        this.usuario = usuario;
        this.contra = contra;
    }

    public User(String usuario, String contra) {
        this.usuario = usuario;
        this.contra = contra;
    }
    
    

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellidoP() {
        return apellidoP;
    }

    public void setApellidoP(String apellidoP) {
        this.apellidoP = apellidoP;
    }

    public String getApellidoM() {
        return apellidoM;
    }

    public void setApellidoM(String apellidoM) {
        this.apellidoM = apellidoM;
    }

    public String getFechaNac() {
        return fechaNac;
    }

    public void setFechaNac(String fechaNac) {
        this.fechaNac = fechaNac;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getImgPerfil() {
        return imgPerfil;
    }

    public void setImgPerfil(String imgPerfil) {
        this.imgPerfil = imgPerfil;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getContra() {
        return contra;
    }

    public void setContra(String contra) {
        this.contra = contra;
    }
    
    

   
    
    
    
}
