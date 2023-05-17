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
    }
}
