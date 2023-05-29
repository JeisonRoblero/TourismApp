package com.project.servlets;

import com.project.clases.Comercio;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "ComercioServlet", value = "/ComercioServlet")
public class ComercioServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Registro de comercio
        // Se obtiene los valores de los parametros ingresados desde el formulario y se almacenan en variables locales
        String usuario = request.getParameter("usuario");
        String contra = request.getParameter("contra");
        String confContra = request.getParameter("conf_contra");
        String correo = request.getParameter("correo");
        int telefono = Integer.parseInt(request.getParameter("telefono"));
        String direccion = request.getParameter("direccion");
        String descripcion = request.getParameter("descripcion");
        float calificacion = Float.parseFloat(request.getParameter("calificacion"));
        int idTipoC = Integer.parseInt(request.getParameter("tipo_comercio"));
        int idLocalidad = Integer.parseInt(request.getParameter("localidad"));

        int noDocSAT = Integer.parseInt(request.getParameter("no_doc_sat"));

        // Se valida que la contraseña y la confirmación de las contraseñas coincidan
        if(!contra.equals(confContra)) {
            response.sendRedirect("./pages/signup-comercio.jsp?contra=1");
        }

        Comercio comercio = new Comercio();
        boolean agregado = comercio.agregarComercio(usuario,correo,contra,telefono,direccion,noDocSAT,descripcion,calificacion,idTipoC,idLocalidad);

        // Si se produce algún error al agregar a la base de datos se redirecciona a la página de
        // registro pero con el parámetro de error distintivo (Para modales en el frontend)
        if(agregado) {
            response.sendRedirect("./pages/login.jsp");
        } else {
            response.sendRedirect("./pages/signup-comercio.jsp?error=1");
        }
    }
}
