package com.project.clases;

public class Main {

    public static void main(String[] args) {

        //PRUEBA DE INGRESO DE LOCALIDAD:
        Localidad localidad = new Localidad();
        System.out.println(localidad.agregarLocalidad("Esquipulas", "Chiquimula"));

        //PRUEBA DE INGRESO DE COMERCIO:
        Comercio comercio = new Comercio();
        System.out.println(comercio.agregarComercio("McDonalds","McDonalds@gmail.com","12345",56231241,"7 Av. A 17-78 col. Reyna Barrios z13",1000,"Esta es una cadena de comida rapida, el principal producto son hamburguesas",5, 1,1));

        //PRUEBA DE INGRESO DE TURISTA:
        Turista turista = new Turista();
        System.out.println(turista.agregarTurista("pablor_ge)", "pablor_ge@gmail.com",47046007, "12345"));

        //PRUEBA DE INGRESO DE PRODUCTO:
        Producto producto = new Producto();
        System.out.println(producto.agregarProducto("Kangreburger", "Hamburguesa con almejas y cangrejo", 61.15, 1,1, "https://images.pexels.com/photos/5860588/pexels-photo-5860588.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"));

        //VER UN DETERMINADO PRODUCTO
        System.out.println(producto.devolverProducto(1).toString());

        //PRUEBA DE ACTUALIZACION DE PRODUCTO
        System.out.println(producto.actualizarProducto(1,"Detergente Magico","Detergente que limpia todo",11.99,1));

        //VER PRODUCTO DESPUES DE ACTUALIZAR
        System.out.println(producto.devolverProducto(1).toString());
    }
}
