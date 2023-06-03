<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/style-cafeteria.css">
    <link rel="stylesheet" href="../css/style-c-user.css">
    <link rel="stylesheet" href="../css/styles.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    
    <title>Productos Disponibles</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@600&display=swap" rel="stylesheet">
    <link rel="stylesheet"
        href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
</head>
<body>
    <header>
        <div class="header-title">
            <img src="../images/Group 370.png" alt="">
        </div>
    </header>
    <section class="contenido">
        <div class="mostrador" id="mostrador">
            <div class="fila">
                <div class="item" onclick="cargar(this)">
                    <div class="contenedor-foto">
                        <img src="../images/1.png" alt="">
                    </div>
                    <p class="descripcion">Frappé Mediano</p>
                    <span class="precio">Q.18.00</span>
                </div>
                <div class="item" onclick="cargar(this)">
                    <div class="contenedor-foto">
                        <img src="../images/2.png" alt="">
                    </div>
                    <p class="descripcion" id>Frappé Pequeño</p>
                    <span class="precio">Q.13.00</span>
                </div>
                
                
            </div>
            <div class="fila">
                <div class="item" onclick="cargar(this)">
                    <div class="contenedor-foto">
                        <img src="../images/3.png" alt="">
                    </div>
                    <p class="descripcion">Pie de Queso</p>
                    <span class="precio">Q.15.00</span>
                </div>
                <div class="item" onclick="cargar(this)">
                    <div class="contenedor-foto">
                        <img src="../images/4.png" alt="">
                    </div>
                    <p class="descripcion">Pie con Glass</p>
                    <span class="precio">Q.18.00</span>
                </div>
                
                
            </div> 
        </div>
        <!-- CONTENEDOR DEL ITEM SELECCIONADO -->
        <div class="seleccion" id="seleccion">
            <div class="cerrar" onclick="cerrar()">
                &#x2715
            </div>
            <div class="info">
                <img src="../images/1.png" alt="" id="img">
                <h2 id="modelo">NIKE MODEL 1</h2>
                <p id="descripcion">Descripción Modelo 1</p>

                <span class="precio" id="precio">$ 130</span>

                <div class="fila">
                    <div class="size">
                        <label for="">Cantidad</label>
                        <select name="" id="">
                            <option value="">1</option>
                            <option value="">2</option>
                            <option value="">3</option>
                            <option value="">4</option>
                        </select>
                    </div>
                    <button>AGREGAR AL CARRITO</button>
                </div>
            </div>
        </div>
    </section>

    <script src="../js/script.js"></script>
<footer>
    <div class="footer-container">

        <div class="footer-item">
            <a href="#">
                <span class="material-symbols-outlined">arrow_back</span>
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
</body>
</html>