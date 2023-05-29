<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
    <meta charset="UTF-8">

    <link rel="shortcut icon" href="../images/logo.png" type="image/x-icon">
    <title>Login | Tourism App</title>
    <link rel="stylesheet" href="../css/form-style.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
<div class="logo">
    <img src="https://scontent.fgua9-2.fna.fbcdn.net/v/t39.30808-6/347088454_819413243164003_649845713433962275_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=730e14&_nc_ohc=JABg94ld-TUAX8iOFKd&_nc_ht=scontent.fgua9-2.fna&oh=00_AfD32l8KdDMANrQIrTEt66GecBUHFGn9c6w111XN0Ptx-Q&oe=6469B39A">
</div>
<div class="centro">
    <h1>Tourism App</h1>
</div>
<div class="center">
    <h2>Bienvenido</h2>
    <div class="texto1">
        Por favor, ingresa tus credenciales:
    </div>
    <form method="post" action="../TuristaServlet">
        <input type="hidden" name="login" value="true">
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
        <div class="tipocuenta-container">
            <div class="tipocuenta">
                <input type="radio" name="opcion_login" id="turista" checked="checked" value="turista">
                <label for="turista">Turista</label>
                <input type="radio" name="opcion_login" id="comercio" value="comercio">
                <label for="comercio">Comercio</label>
            </div>
        </div>

        <input type="submit" value="Iniciar Sesion">

        <div class="signup_link">
            ¿No tienes una cuenta? <a href="signup.jsp">¡Registrate!</a>
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
