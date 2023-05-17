package com.project.clases;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Turista {
    private String nombre_user;
    private String correo;
    private int telefono;
    private String contrasenia;

    public Turista(String nombre_user, String correo, int telefono, String contrasenia) {
        this.nombre_user = nombre_user;
        this.correo = correo;
        this.telefono = telefono;
        this.contrasenia = contrasenia;
    }

    public Turista() {
    }

    public boolean agregarTurista(String nombre_user, String correo, int telefono, String contrasenia){
        ConexionOracle con = new ConexionOracle();
        try {
            Statement st = con.conexion().createStatement();
            st.executeUpdate("INSERT INTO \"turista\" (\"nombre_user\", \"correo\", \"telefono\", \"contraseña\") VALUES ('"+nombre_user+"','"+correo+"',"+telefono+",'"+contrasenia+"')");
            return true;
        }catch (SQLException e){
            e.printStackTrace();
            return false;
        }
    }

    public String getNombre_user() {
        return nombre_user;
    }

    public void setNombre_user(String nombre_user) {
        this.nombre_user = nombre_user;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public int getTelefono() {
        return telefono;
    }

    public void setTelefono(int telefono) {
        this.telefono = telefono;
    }

    public String getContrasenia() {
        return contrasenia;
    }

    public void setContrasenia(String contrasenia) {
        this.contrasenia = contrasenia;
    }
}
