package com.project.clases;

import java.sql.SQLException;
import java.sql.Statement;

public class Localidad {
    private String nombre;
    private String ubicacion;

    public Localidad(String nombre, String ubicacion) {
        this.nombre = nombre;
        this.ubicacion = ubicacion;
    }

    public Localidad() {}

    public boolean agregarLocalidad(String nombre, String ubicacion){
        ConexionOracle con = new ConexionOracle();
        try {
            Statement st = con.conexion().createStatement();
            st.executeUpdate("INSERT INTO \"localidad\" (\"nombre\",\"ubicacion\") VALUES ('"+nombre+"','"+ubicacion+"')");
            st.close();
            con.close();
            return true;
        }catch (SQLException e){
            e.printStackTrace();
            return false;
        }
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getUbicacion() {
        return ubicacion;
    }

    public void setUbicacion(String ubicacion) {
        this.ubicacion = ubicacion;
    }
}
