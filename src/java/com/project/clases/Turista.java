package com.project.clases;

import java.sql.*;

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

    public Turista() {}

    //Registra un nuevo turista en la base de datos
    public boolean agregarTurista(String nombre_user, String correo, int telefono, String contrasenia){
        ConexionOracle con = new ConexionOracle();
        try {
            Statement st = con.conexion().createStatement();
            ResultSet rs = st.executeQuery("SELECT * FROM \"turista\"");
            //Se valida que el nombre de usuario o correo no esten repetidos
            while (rs.next()){
                if(rs.getString(2).equals(nombre_user) || rs.getString(3).equals(correo)){
                    rs.close();
                    st.close();
                    con.close();
                    return false;
                }
            }
            st.executeUpdate("INSERT INTO \"turista\" (\"nombre_user\", \"correo\", \"telefono\", \"contraseña\") VALUES ('"+nombre_user+"','"+correo+"',"+telefono+",'"+contrasenia+"')");
            rs.close();
            st.close();
            con.close();
            return true;
        }catch (SQLException e){
            e.printStackTrace();
            return false;
        }
    }

    //Se realiza el login del Turista
    public boolean loginTurista(String correoONombre_user, String contrasenia){
        ConexionOracle con = new ConexionOracle();
        try {
            Statement st = con.conexion().createStatement();
            ResultSet rs = st.executeQuery("SELECT * FROM \"turista\"");
            //Se valida que el nombre o correo y contraseña ingresados si esten registrados
            while (rs.next()){
                if((rs.getString(2).equals(correoONombre_user) | rs.getString(3).equals(correoONombre_user)) && (rs.getString(5).equals(contrasenia))){
                    rs.close();
                    st.close();
                    con.close();
                    return true;
                }
            }
            rs.close();
            st.close();
            con.close();
            return false;
        } catch (SQLException e) {
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
