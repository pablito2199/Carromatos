package project;

import java.io.*;
import java.util.*;
import java.sql.Date;


public class Usuario 
{
    private String correo;
    private String contrasena;
    private String nombre;
    private String apellido1;
    private String apellido2;
    private String sexo;
    private Integer telefono;
    private Date nacimiento;
    private String usuario;


    public void setCorreo(String correo) {
	this.correo=correo;
    }
    public String getCorreo() {
	return correo;
    }

    public void setContrasena(String contrasena) {
    this.contrasena=contrasena;
    }
    public String getContrasena() {
    return contrasena;
    }

    public void setNombre(String nombre) {
        this.nombre=nombre;
    }
    public String getNombre() {
        return nombre;
    }

    public void setApellido1(String apellido1) {
        this.apellido1=apellido1;
    }
    public String getApellido1() {
        return apellido1;        
    }

    public void setApellido2(String apellido2) {
        this.apellido2=apellido2;
    }
    public String getApellido2() {
        return apellido2;        
    }

    public void setSexo(String sexo) {
        this.sexo=sexo;
    }
    public String getSexo() {
        return sexo;        
    }

    public void setTelefono(Integer telefono) {
        this.telefono=telefono;
    }
    public Integer getTelefono() {
        return telefono;        
    }

    public void setNacimiento(Date nacimiento) {
        this.nacimiento=nacimiento;
    }
    public Date getNacimiento() {
        return nacimiento;        
    }

    public void setUsuario(String usuario) {
        this.usuario=usuario;
    }
    public String getUsuario() {
        return usuario;        
    }
}