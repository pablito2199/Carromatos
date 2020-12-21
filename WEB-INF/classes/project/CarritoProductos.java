package project;

import java.io.*;
import java.util.*;
import project.Producto;

public class CarritoProductos
{
    private HashMap<String, Producto> carrito = new HashMap<>();

    public CarritoProductos() {
        this.carrito = new HashMap<>();
    }


    // Guarda el objeto producto en el hashmap
    public void setCarrito(HashMap<String, Producto> carro) {
        this.carrito.clear();
        for (String key : carro.keySet()) {
            this.carrito.put(key, carro.get(key));
        }
    }

    // Recupera la lista de productos
    public HashMap<String, Producto> getLista() {
        return carrito;
    }

    // Recupera el numero total de productos en la lista
    public int getNumTotalProductos()  {
        return carrito.size();
    }

    // Recupera el importe total en la lista
    public Double getImporte()  {
        Double importe = 0.0;
        for (String n : carrito.keySet()) { 
            Double pr = Double.parseDouble(carrito.get(n).getPrecio());
            importe += pr;
        }
        importe = Math.round(importe * 100.0) / 100.0;
        return importe;
    }
}