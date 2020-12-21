package project;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.util.*;
import java.sql.Date;
import project.FachadaBaseDatos;
import project.Usuario;

public class inicioSesion extends HttpServlet {
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
        request.setCharacterEncoding("UTF-8");
        fbd = new FachadaBaseDatos();
        // Creamos una nueva sesion
        HttpSession session = request.getSession(true);	

        Usuario u = new Usuario();
        u.setCorreo(request.getParameter("correo"));
        u.setContrasena(request.getParameter("password"));

        if (request.getParameter("cerrar") != null) {
            session.setAttribute("usuario", null);
            session.setAttribute("correo", null);
            gotoPage("/index.jsp", request, response);
        } else {
            if (request.getParameter("opcion").equals("0")) {
                if (fbd.consultarUsuario(u)) {
                    session.setAttribute("usuario", fbd.consultarNombre(u));
                    session.setAttribute("mail", u.getCorreo());
                    gotoPage("/index.jsp", request, response);
                } else {
                    request.setAttribute("registrado", "ERROR! USUARIO Y/O CLAVE INCORRECTOS");
                    gotoPage("/iniciosesion.jsp", request, response);
                }
            } else {
                u.setNombre(request.getParameter("nombre"));
                u.setApellido1(request.getParameter("apellido1"));
                u.setApellido2(request.getParameter("apellido2"));
                if (request.getParameter("sexo").equals("h")) {
                    u.setSexo("Hombre");
                } else if (request.getParameter("sexo").equals("m")) {
                    u.setSexo("Mujer");
                } else if (request.getParameter("sexo").equals("n")) {
                    u.setSexo("No Binario");
                }
                u.setTelefono(Integer.parseInt(request.getParameter("telefono")));
                u.setNacimiento(Date.valueOf(request.getParameter("fechaNacimiento")));
                u.setUsuario(request.getParameter("usuario"));
                if (fbd.consultarUsuario(u)) {
                    request.setAttribute("registrado", "ERROR! USUARIO YA REGISTRADO");
                    gotoPage("/iniciosesion.jsp", request, response);
                } else {
                    fbd.insertarUsuario(u);
                    session.setAttribute("usuario", fbd.consultarNombre(u));
                    session.setAttribute("mail", u.getCorreo());
                    gotoPage("/index.jsp", request, response);
                }
            }
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