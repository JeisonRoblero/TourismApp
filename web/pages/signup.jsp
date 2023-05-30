<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
    <meta charset="UTF-8">

    <link rel="shortcut icon" href="../images/logo.png" type="image/x-icon">
    <title>Signup | Tourism App</title>
    <link rel="stylesheet" href="../css/form-style.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
<div class="logo-s">
    <img src="../images/logo.png">
</div>
<div class="centro">
    <h1 style="margin-top: -33%">Tourism App</h1>
</div>
<div class="center">
    <h2>Bienvenido</h2>
    <div class="texto1">
        Por favor, ingresa tus credenciales:
    </div>
    <form method="post" action="../TuristaServlet">
        <input type="hidden" name="login" value="false">
        <div class="txt_field">
            <input type="text" name="usuario" id="usuario" required>
            <span></span>
            <label for="usuario">Usuario <span style="color: red">*</span></label>
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

        <input type="checkbox" required><b> Acepto Terminos y condiciones</b> <br><br>

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
