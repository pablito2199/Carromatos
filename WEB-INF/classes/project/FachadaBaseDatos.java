package project;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Properties;
import java.util.HashMap;
import java.sql.SQLException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Connection;
import java.text.DecimalFormat;
import project.Usuario;
import project.Producto;

public class FachadaBaseDatos {
    private Connection conexion;       // Conexión SQL

    //Contructor
    public FachadaBaseDatos() {
        try {
		    Class.forName ( "org.postgresql.Driver" );
	    } catch (java.lang.ClassNotFoundException e) {
		    System.out.println("PostgreSQL JDBC Driver no encontrado ... ");
	    }


        //Se configura la conexión con el archivo .properties
        try {

            Properties usuario = new Properties();

            //Establecemos propiedades de usuario y contraseña
            usuario.setProperty("user", "postgres");
            usuario.setProperty("password", "2199");
            //Creamos la conexión
            this.conexion = java.sql.DriverManager.getConnection("jdbc:postgresql://"
                    + "localhost:"
                    + "5432/"
                    + "Carromatos",
                    usuario);
        //En caso de error capturamos la excepciones, imprimimos el mensaje y genereramos la ventana de excepción
        } catch (SQLException i) {
            System.out.println(i.getMessage());
        }
    }
    
    //Permite comprobar si el usuario está registrado
    public boolean consultarUsuario(Usuario usuario1) {
        //Declaramos variables
        boolean resultado = false;
        Connection con;
        PreparedStatement stmUsuario = null;
        HashMap<String, String> usuarios = new HashMap<>();
        ResultSet rsUsuario;

        //Establecemos conexión
        con = this.conexion;


        try {
            String consulta = "select * from usuarios";
            stmUsuario = con.prepareStatement(consulta);
            rsUsuario = stmUsuario.executeQuery();
            while (rsUsuario.next()) {
                Usuario usuario = new Usuario();
                usuario.setCorreo(rsUsuario.getString("correo"));
                usuario.setContrasena(rsUsuario.getString("contrasena"));
                usuarios.put(usuario.getCorreo(), usuario.getContrasena());
            }
            for (String key : usuarios.keySet()) {
                if (key.equals(usuario1.getCorreo())) {
                    if (usuario1.getContrasena().equals(usuarios.get(key))) {
                        resultado = true;
                    }
                    break;
                }
            }
        } catch (SQLException e) {
        } finally {
            try {
                stmUsuario.close();
            } catch (SQLException e) {
                System.out.println("Imposible cerrar cursores");
            }
        }
        return resultado;
    }
    
    //Permite consultar el nombre del usuario
    public String consultarNombre(Usuario usuario1) {
        //Declaramos variables
        String resultado = "";
        Connection con;
        PreparedStatement stmUsuario = null;
        HashMap<String, String> usuarios = new HashMap<>();
        ResultSet rsUsuario;

        //Establecemos conexión
        con = this.conexion;


        try {
            String consulta = "select * from usuarios where correo = ?";
            stmUsuario = con.prepareStatement(consulta);
            stmUsuario.setString(1, usuario1.getCorreo());
            rsUsuario = stmUsuario.executeQuery();
            rsUsuario.next();
            resultado = rsUsuario.getString("nombre");
        } catch (SQLException e) {
        } finally {
            try {
                stmUsuario.close();
            } catch (SQLException e) {
                System.out.println("Imposible cerrar cursores");
            }
        }
        return resultado;
    }

    //Insertar datos del usuario
    public void insertarUsuario(Usuario u) {
        //Declaramos variables
        Connection con;
        PreparedStatement stmUsuario = null;

        //Establecemos conexión
        con = this.conexion;

        //Intentamos la consulta SQL
        try {
            //Preparamos la consulta SQL para insertar en la tabla de usuarios un nuevo usuario
            stmUsuario = con.prepareStatement("insert into usuarios (correo, contrasena, usuario, nombre, apellido1, apellido2, sexo, nacimiento, telefono) "
            + "values (?,?,?,?,?,?,?,?,?)");
            //Sustituimos
            stmUsuario.setString(1, u.getCorreo());
            stmUsuario.setString(2, u.getContrasena());
            stmUsuario.setString(3, u.getUsuario());
            stmUsuario.setString(4, u.getNombre());
            stmUsuario.setString(5, u.getApellido1());
            stmUsuario.setString(6, u.getApellido2());
            stmUsuario.setString(7, u.getSexo());
            stmUsuario.setDate(8, u.getNacimiento());
            stmUsuario.setInt(9, u.getTelefono());
            //Actualizamos
            stmUsuario.executeUpdate();

            //En caso de error se captura la excepción
        } catch (SQLException e) {
            //Se imprime el mensaje
            System.out.println(e.getMessage());
        } finally {
            //Finalmente intentamos cerrar los cursores
            try {
                stmUsuario.close();
            } catch (SQLException e) {
                //De no poder se notifica de ello
                System.out.println("Imposible cerrar cursores");
            }
        }
    }
    
    //Permite consultar los productos de la tienda
    public HashMap<String, Producto> consultarProductos() {
        //Declaramos variables
        HashMap<String, Producto> resultado = new HashMap<>();
        Connection con;
        PreparedStatement stmProductos = null;
        ResultSet rsProductos;

        //Establecemos conexión
        con = this.conexion;


        try {
            String consulta = "select * from productos";
            stmProductos = con.prepareStatement(consulta);
            rsProductos = stmProductos.executeQuery();
            while (rsProductos.next()) {
                Double precio = 0.0;
                Producto producto = new Producto();
                producto.setNombre(rsProductos.getString("nombre"));
                producto.setImagen(rsProductos.getString("imagen"));
                producto.setCantidad(rsProductos.getInt("stock"));
                precio = Math.round(rsProductos.getDouble("precio") * 100.0) / 100.0;
                producto.setPrecio(getTwoDecimals(precio));
                producto.setPrecioNum(precio);
                resultado.put(producto.getNombre(), producto);
            }
        } catch (SQLException e) {
        } finally {
            try {
                stmProductos.close();
            } catch (SQLException e) {
                System.out.println("Imposible cerrar cursores");
            }
        }
        return resultado;
    }

    //Insertar datos de la compra
    public void insertarCompra(String correo, String compra, Double importe) {
        //Declaramos variables
        Connection con;
        PreparedStatement stmCompras = null;

        //Establecemos conexión
        con = this.conexion;

        //Intentamos la consulta SQL
        try {
            //Preparamos la consulta SQL para insertar en la tabla de compras una nueva compra
            stmCompras = con.prepareStatement("insert into compras (correo, compra, importe) "
            + "values (?,?,?)");
            //Sustituimos
            stmCompras.setString(1, correo);
            stmCompras.setString(2, compra);
            stmCompras.setDouble(3, importe);
            //Actualizamos
            stmCompras.executeUpdate();

            //En caso de error se captura la excepción
        } catch (SQLException e) {
            //Se imprime el mensaje
            System.out.println(e.getMessage());
        } finally {
            //Finalmente intentamos cerrar los cursores
            try {
                stmCompras.close();
            } catch (SQLException e) {
                //De no poder se notifica de ello
                System.out.println("Imposible cerrar cursores");
            }
        }
    }

    //Permite modificar los datos de un cd de la base de datos
    public void modificarStock(HashMap<String, Producto> productos) {
       //Declaramos variables
       Connection con;
       PreparedStatement stmCarrito = null;

       //Establecemos conexión
       con = this.conexion;

       //Intentamos la consulta SQL
       try {
           for (String key : productos.keySet()) {
                //Preparamos la sentencia para actualizar los datos del carrito con el nombre del cd especificado
                stmCarrito = con.prepareStatement("update productos "
                        + "set stock = stock - ? "
                        + "where nombre = ?");
                //Actualizamos
                stmCarrito.setInt(1, productos.get(key).getCantidad());
                stmCarrito.setString(2, key);

                //Actualizamos
                stmCarrito.executeUpdate();
           }
       //En caso de error se captura la excepción
       } catch (SQLException e) {
           //Se imprime el mensaje
           System.out.println(e.getMessage());
       } finally {
           //Finalmente intentamos cerrar cursores
           try {
               stmCarrito.close();
           } catch (SQLException e) {
               //De no poder se notifica de ello
               System.out.println("Imposible cerrar cursores");
           }
       }
   }

    private static String getTwoDecimals(double value) {
        DecimalFormat df = new DecimalFormat("0.00");
        return df.format(value);
    }
}