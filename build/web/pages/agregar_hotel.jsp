<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Agregar hotel</title>

    <link rel="stylesheet" href="agregarhotel-style.css">

        <!-- CSS compilado y minificado -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
        <!--Informar al navegador que el sitio web esta optimizado para dispositivos moviles-->
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@700&display=swap" rel="stylesheet">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
       
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
</head>
<body class="cuerpolocal">

    <header class="start_local">
        <div class="header-local">
            <img src="C:\Users\Noe Gomez\Downloads\agregar_hotel\img_local\agregarhotelbien.png">
        </div>

    </header>
    <!--PRIMERA PARTE FORMULARIO AGREGAR HOTEL-->
    <main class="main_principal">
        <div class="contenedor_white">
            <!--ALERTA CON JAVASCRIPT CUANDO SE LLENA EL FORMULARIO-->
            <form  action="javascript:alert('Datos de tienda agregados');" class="form_tienda1">
                    
            <!--PRIMER INPUT INGRESAR NOMBRE HOTEL-->
            <div class="texto_localidad1">
                    <input type="text1" class="inicio_type1" id= "inp1" placeholder="Ingresar nombre del hotel *" required><!--campo obligatorio-->            
            </div> 

                <br>
            
            <!--SEGUNDO INPUT INGRESAR DESCRIPCION-->
            <div class="texto_localidad1">
                    <input type="text1" class="inicio_type2" id= "inp2" placeholder="Descripción">           
            </div> 
                <br>
            
            <!--TERCER INPUT INGRESAR DIRECCION-->
            <div class="texto_localidad1">
                <input type="text1" class="inicio_type3" id= "inp3" placeholder="Ingresar Dirección">            
            </div> 
            
            <!--CUARTO INPUT INGRESAR TELEFONO-->
            <div class="texto_localidad4">
                <input type="text1" class="inicio_type3" id= "inp4" placeholder="Ingresar teléfono">            
            </div> 

            <!--QUINTO INPUT INGRESAR LINK IMAGEN-->
            <div class="texto_localidad4">
                <input type="text1" class="inicio_type3" id= "inp5" placeholder="Ingresar enlace de imagen de la tienda">            
            </div> 
                        
                <br>

            <!--PRIMER BOTON ENVIO FORMULARIO-->
            <div class="boton1" style="text-align: center; justify-content: center; display: flex; width: 100%;">
            <button class="btn waves-effect waves-light btn findbtn" type="submit" value="Submit" name="agregar_tienda" 
            style="background-color: rgb(86, 190, 82); border-radius: 8px;">
            <b>AGREGAR TIENDA</b>
                <i class="material-icons">archive</i>
              </button>
            </div>

            </form>

                <br>
                <br>
            
            <!--SEGUNDA PARTE FORMULARIO AGREGAR PRODUCTO-->
            <form  action="javascript:alert('Datos de producto agregados');" class="form_tienda2">
                <div class="datos_producto">
                <h6><b>Datos del producto</b></h6>
                </div>

                <div class="nombre_producto">
                    <input type="producto1" class="n_producto1" id= "np1" placeholder="Nombre producto *" required><!--campo obligatorio-->            
                </div> 

                <div class="precio">
                    <input type="producto1" class="n_producto1" id= "np2" placeholder="Precio *" required><!--campo obligatorio-->            
                </div> 

                <div class="imagen_producto">
                    <input type="producto1" class="n_producto1" id= "np3" placeholder="Ingrese enlace de la imagen del producto" required><!--campo obligatorio-->            
                </div> 

                <br>

                <!--SEGUNDO BOTON ENVIO FORMULARIO-->
                <div class="boton2" style="text-align: center; justify-content: center; display: flex; width: 100%;">
                <button class="btn waves-effect waves-light btn findbtn" type="submit" value="Submit" name="agregar_producto"
                style="background-color: rgb(84, 190, 80); border-radius: 8px;">
                <b>AGREGAR PRODUCTO</b>
                <i class="material-icons">add_circle</i>
                </button>
                </div>

            </form>
        </div>
    </main>

    <br>

    <footer>
        <div class="footer-container">
            
            <div class="footer-item">
                <a href="#">
                    <span class="material-symbols-outlined">
                        arrow_back
                        </span>
                </a>
            </div>
            <div class="footer-item">
                <a href="#">
                    <span class="material-symbols-outlined">globe_asia</span>
                </a>
            </div>
            <div class="footer-item">
                <a href="#">
                    <span class="material-symbols-outlined">account_circle</span>
                </a>
            </div>

        </div>

    </footer>

    <!--JavaScript al final del cuerpo para una carga optimizada-->
    <script type="text/javascript" src="js/materialize.min.js"></script>


    <!-- Compiled and minified JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
    <script> document.addEventListener('DOMContentLoaded', function() {
    var elems = document.querySelectorAll('.carousel');
    var instances = M.Carousel.init(elems);
    });</script>   
    <script src="bootstrap.min.js"></script>
    
</body>
</html>