package project;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.util.*;
import project.Producto;
import project.FachadaBaseDatos;

public class tienda extends HttpServlet {
    FachadaBaseDatos fbd;    // Enlace a la fachada de base de datos

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

        HashMap<String, Producto> productos = fbd.consultarProductos();
        HashMap<String, Producto> carrito = (HashMap<String, Producto>) session.getAttribute("carrito");

        if (carrito == null) {
            carrito = new HashMap<>();
        }

        // COMPLETAR: Guardamos la lista en la sesion
        session.setAttribute("productos", productos);

        if (request.getParameter("nombre") != null) {
            Producto p = new Producto();
            p.setNombre(request.getParameter("nombre"));
            p.setImagen(request.getParameter("imagen"));

            boolean esta = false;
            for (String key : carrito.keySet()) {
                if (key.equals(request.getParameter("nombre"))) {
                    esta = true;
                }
            }
            if (esta) {
                Integer cantidad = Integer.parseInt(request.getParameter("cantidad")) + carrito.get(request.getParameter("nombre")).getCantidad();
                if (cantidad > productos.get(request.getParameter("nombre")).getCantidad()) {
                    cantidad = productos.get(request.getParameter("nombre")).getCantidad();
                }
                Double precio = Double.parseDouble(request.getParameter("precio")) * cantidad;
                p.setCantidad(cantidad);
                p.setPrecio(String.valueOf(precio));
            } else {
                p.setCantidad(Integer.parseInt(request.getParameter("cantidad")));
                Double precio = Double.parseDouble(request.getParameter("precio")) * Integer.parseInt(request.getParameter("cantidad"));
                p.setPrecio(String.valueOf(precio));
            }
            carrito.put(p.getNombre(), p);
        }

        session.setAttribute("carrito", carrito);
	

	// Presentamos los datos
	gotoPage("/tienda.jsp", request, response);
	
	



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