<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
    <meta charset="UTF-8">

    <link rel="shortcut icon" href="../images/logo.png" type="image/x-icon">
    <title>Signup Comercio | Tourism App</title>
    <link rel="stylesheet" href="../css/form-style.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
<div class="logo-s">
    <img src="https://scontent.fgua9-2.fna.fbcdn.net/v/t39.30808-6/347088454_819413243164003_649845713433962275_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=730e14&_nc_ohc=JABg94ld-TUAX8iOFKd&_nc_ht=scontent.fgua9-2.fna&oh=00_AfD32l8KdDMANrQIrTEt66GecBUHFGn9c6w111XN0Ptx-Q&oe=6469B39A">
</div>
<div class="centro">
    <h1 style="margin-top: -33%">Tourism App</h1>
</div>
<div class="center">
    <h2>Bienvenido</h2>
    <div class="texto1">
        Por favor, ingresa tus credenciales:
    </div>
    <form method="post" action="../ComercioServlet">
        <div class="txt_field">
            <input type="text" name="usuario" id="usuario" required>
            <span></span>
            <label for="usuario">Nombre comercio <span style="color: red">*</span></label>
        </div>
        <div class="txt_field">
            <input type="password" name="contra" id="contra" required>
            <span></span>
            <label for="contra">Contraseña <span style="color: red">*</span></label>
        </div>
        <div class="txt_field">
            <input type="password" name="conf_contra" id="conf_contra" required>
            <span></span>
            <label for="conf_contra">Confirmar Contraseña <span style="color: red">*</span></label>
        </div>
        <div class="txt_field">
            <input type="email" name="correo" id="correo" required>
            <span></span>
            <label for="correo">Correo <span style="color: red">*</span></label>
        </div>
        <div class="txt_field">
            <input type="number" name="telefono" id="telefono" required>
            <span></span>
            <label for="telefono">Numero <span style="color: red">*</span></label>
        </div>

        <div class="txt_field">
            <input type="text" name="direccion" id="direccion" required>
            <span></span>
            <label for="direccion">Dirección <span style="color: red">*</span></label>
        </div>

        <div class="txt_field">
            <textarea name="descripcion" id="descripcion" cols="30" rows="10"></textarea>
            <span></span>
            <label for="descripcion">Descripción <span style="color: red">*</span></label>
        </div>

        <select name="tipo_comercio">
            <option value="1">Opción 1</option>
            <option value="2">Opción 2</option>
            <option value="3">Opción 3</option>
        </select>

        <select name="localidad">
            <option value="1">Opción 1</option>
            <option value="2">Opción 2</option>
            <option value="3">Opción 3</option>
        </select>

        <div class="txt_field">
            <input type="number" name="calificacion" id="calificacion" required>
            <span></span>
            <label for="calificacion">Calificación <span style="color: red">*</span></label>
        </div>

        <div class="txt_field">
            <input type="number" name="no_doc_sat" id="no_doc_sat" required>
            <span></span>
            <label for="no_doc_sat">No. Documento SAT <span style="color: red">*</span></label>
        </div>

        <input type="checkbox" required><b> Acepto Terminos y condiciones</b> <br>

        <input type="submit" value="Registrarse">
        <div class="signup_link">
            ¿Ya tienes cuenta? <a href="login.jsp">¡Iniciar Sesión!</a>
        </div>
        <section class="buttons">
            <a href="#" class="fa fa-facebook" style="background: blue;"></a>
            <a href="#" class="fa fa-google" style="background: red;"></a>
            <a href="#" class="fa fa-apple" style="background: black;"></a>
        </section>

    </form>
</div>

</body>
</html>