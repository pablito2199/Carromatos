package project;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.util.*;
import project.Producto;
import project.FachadaBaseDatos;

public class carrito extends HttpServlet {
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
        session.setAttribute("productos", new HashMap<>());
        HashMap<String, Producto> carrito = (HashMap<String, Producto>) session.getAttribute("carrito");

        if (request.getParameter("seleccion") != null) {
            //Eliminamos en la base de datos
            carrito.remove(request.getParameter("seleccion"));
        }
        session.setAttribute("carrito", carrito);

        lista = new CarritoProductos();
        lista.setCarrito(carrito);
    
        // COMPLETAR: Guardamos la lista en la sesion
        session.setAttribute("CarritoProductos", lista);
	

	// Presentamos los datos
	gotoPage("/carrito.jsp", request, response);
	
	



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