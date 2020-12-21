package project;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.util.*;
import project.Producto;
import project.FachadaBaseDatos;

public class pago extends HttpServlet {
    FachadaBaseDatos fbd;    // Enlace a la fachada de base de datos

private CarritoProductos lista;

    public void init(ServletConfig config)
	throws ServletException {

	super.init(config);
    }

    public void doGet(HttpServletRequest request,
		      HttpServletResponse response)
	throws ServletException, IOException 
    {
	// If it is a get request forward to doPost()
	doPost(request, response);
    }

    public void doPost(HttpServletRequest request,
		       HttpServletResponse response)
	throws ServletException, IOException 
    {
        fbd = new FachadaBaseDatos();
        // Creamos una nueva sesion
        HttpSession session = request.getSession(true);  
        HashMap<String, Producto> carrito = (HashMap<String, Producto>) session.getAttribute("carrito");  
        
    // Presentamos los datos
    if (session.getAttribute("usuario") != null) {
        String carro = "";
        int j = 1;
        for (String key : carrito.keySet()) {
            carro += carrito.get(key).getCantidad() + " x ";
            carro += key;
            if (j != carrito.size()) {
                carro += " + ";
            }
            j++;
        }

        lista = new CarritoProductos();
        lista.setCarrito(carrito);

        fbd.insertarCompra(String.valueOf(session.getAttribute("mail")), carro, lista.getImporte());
        fbd.modificarStock(carrito);
    
        // COMPLETAR: Guardamos la lista en la sesion
        request.setAttribute("CarritoProd", lista);
        request.setAttribute("carrito", carrito);
        session.setAttribute("carrito", new HashMap<>());
        session.setAttribute("CarritoProductos", null);
        gotoPage("/pago.jsp", request, response);
    } else {
        request.setAttribute("registrado", "ERROR! DEBES ESTAR LOGUEADO PARA PODER COMPRAR.");
        gotoPage("/carrito.jsp", request, response);
    }
	
	



    }

    private void gotoPage(String address, HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
	// Creamos objeto RequestDispatcher
	RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(address);
	dispatcher.forward(request, response);
    }

    public void destroy() 
    {
    }
}