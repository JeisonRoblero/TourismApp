package com.project.servlets;

import com.project.clases.Comercio;
import com.project.clases.Turista;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "TuristaServlet", value = "/TuristaServlet")
public class TuristaServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Validando si el metodo fue invocado desde un formulario de inicio de sesión o de registro
        if(request.getParameter("login").equals("false")) {
            // Se obtiene los valores de los parametros ingresados desde el formulario y se almacenan en variables locales
            String usuario = request.getParameter("usuario");
            String contra = request.getParameter("contra");
            String confContra = request.getParameter("conf_contra");
            String correo = request.getParameter("correo");
            int telefono = Integer.parseInt(request.getParameter("telefono"));

            // Se valida que la contraseña y la confirmación de las contraseñas coincidan
            if(!contra.equals(confContra)) {
                response.sendRedirect("./pages/signup.jsp?contra=1");
            }

            // Instancia de turista para agregar al turista a la base de datos
            Turista turista = new Turista();
            boolean agregado = turista.agregarTurista(usuario, correo, telefono, contra);

            // Si se produce algún error al agregar a la base de datos se redirecciona a la página de
            // registro pero con el parámetro de error distintivo (Para modales en el frontend)
            if(agregado) {
               response.sendRedirect("./pages/login.jsp");
            } else {
               response.sendRedirect("./pages/signup.jsp?error=1");
            }

        } else if(request.getParameter("login").equals("true")) {
            // Se obtiene los valores de los parametros ingresados desde el formulario y se almacenan en variables locales
            String opcionLogin = request.getParameter("opcion_login");
            String usuario = request.getParameter("usuario");
            String contra = request.getParameter("contra");

            // Validando si el usuario ingreso como turista o como comercio
            if(opcionLogin.equals("turista")) {
                // Instancia de turista para iniciar sesión al turista
                Turista turista = new Turista();
                boolean logged = turista.loginTurista(usuario, contra);

                // Si se produce algún error al iniciar sesión se redirecciona a la página de
                // login pero con el parámetro de error distintivo (Para modales en el frontend)
                if(logged) {
                    HttpSession session = request.getSession();
                    session.setAttribute("usuario", usuario);
                    response.sendRedirect("./");
                } else {
                    response.sendRedirect("./pages/login.jsp?error=1");
                }
            } else if(opcionLogin.equals("comercio")) {
                // Instancia de comercio para iniciar sesión al comercio
                Comercio comercio = new Comercio();
                boolean logged = comercio.loginComercio(usuario, contra);

                // Si se produce algún error al iniciar sesión se redirecciona a la página de
                // login pero con el parámetro de error distintivo (Para modales en el frontend)
                if(logged) {
                    HttpSession session = request.getSession();
                    session.setAttribute("comercio", usuario);
                    response.sendRedirect("./");
                } else {
                    response.sendRedirect("./pages/login.jsp?error=1");
                }
            }
        }
    }

    public void destroy() {
    }
}
