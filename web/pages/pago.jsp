<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <!-- custom css file link  -->
    <link rel="stylesheet" href="../css/style-pago.css">

</head>
<body>

<div class="container">

    <form action="">

        <div class="row">

            <div class="col">

                <h3 class="title">Datos de Facturación</h3>

                <div class="inputBox">
                    <span>Nombre Completo :</span>
                    <input type="text" placeholder="Pablo Gerardo Gomez Roblero">
                </div>
                <div class="inputBox">
                    <span>E-mail :</span>
                    <input type="email" placeholder="ejemplo@example.com">
                </div>
                <div class="inputBox">
                    <span>Dirección de Entrega :</span>
                    <input type="text" placeholder="7ma. Ave 7-24">
                </div>
                <div class="inputBox">
                    <span>Ciudad :</span>
                    <input type="text" placeholder="Guatemala">
                </div>

                <div class="flex">
                    <div class="inputBox">
                        <span>Departamento:</span>
                        <input type="text" placeholder="Guatemala">
                    </div>
                    <div class="inputBox">
                        <span>Codigo Postal :</span>
                        <input type="text" placeholder="01010">
                    </div>
                </div>

            </div>

            <div class="col">

                <h3 class="title">Tipo de Pago</h3>

                <div class="inputBox">
                    <span>Metodos Digitales Aceptados:</span>
                    <img src="../images/card_img.png" alt="">
                </div>
                <div class="efectivo">
                    <input type="checkbox" id="radio" name="radio" />
                    <span>Efectivo</span>
                </div>
                <br>
                <div class="advertencia">
                    <span>Si ha elegido "Efectivo", obvíe los datos posteriores de tarjeta</span>
                </div>
                <div class="inputBox">
                    <span>Nombre Registrado:</span>
                    <input type="text" placeholder="Juan Lopez">
                </div>
                <div class="inputBox">
                    <span>Numero Crediticio:</span>
                    <input type="number" placeholder="1111-2222-3333-4444">
                </div>
                <div class="inputBox">
                    <span>Fecha Expiracion:</span>
                    <input type="text" placeholder="Enero">
                </div>

                <div class="flex">
                    <div class="inputBox">
                        <span>Año Expiracion:</span>
                        <input type="number" placeholder="2022">
                    </div>
                    <div class="inputBox">
                        <span>CVV :</span>
                        <input type="text" placeholder="1234">
                    </div>
                </div>

            </div>
    
        </div>

        <input type="submit" value="Confirmar Pago" class="submit-btn">

    </form>

</div>    
    
</body>
</html>