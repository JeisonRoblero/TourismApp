<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/style.css">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@700&display=swap" rel="stylesheet">

    <link rel="shortcut icon" href="images/logo.png" type="image/x-icon">
    <title>Tourism App</title>
</head>
<body>

    <div class="splash-screen">
        <div class="splash-logo">
            <img src="images/logo.png" alt="Tourism App" class="splash-img">
        </div>
        <h3 class="main-title">Tourism App</h3>
    </div>

    <h2>...</h2>
    <jsp:include page="pages/signup.jsp"/>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="js/app.js"></script>

    <script>
        showSplashScreen();
    </script>
</body>
</html>
