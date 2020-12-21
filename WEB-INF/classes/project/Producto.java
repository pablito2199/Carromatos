package project;

import java.io.*;
import java.util.*;


public class Producto 
{
    private String nombre;
    private String imagen;
    private Integer cantidad;
    private String precio;
    private Double precioNum;


    public void setNombre(String nombre) {
	this.nombre=nombre;
    }
    public String getNombre() {
	return nombre;
    }
    public void setImagen(String imagen) {
    this.imagen=imagen;
    }
    public String getImagen() {
    return imagen;
    }
    public void setCantidad(Integer cantidad) {
	this.cantidad=cantidad;
    }
    public Integer getCantidad() {
	return cantidad;
    }
    public void setPrecio(String precio) {
	this.precio=precio;
    }
    public String getPrecio() {
    return precio;
    }
    public void setPrecioNum(Double precioNum) {
	this.precioNum=precioNum;
    }
    public Double getPrecioNum() {
    return precioNum;
    }
}