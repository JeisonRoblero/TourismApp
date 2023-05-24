package com.project.clases;

import java.sql.*;

public class Comercio {

    private String nombre_comercio;
    private String correo;
    private String contrasenia;
    private int telefono;
    private String direccion;
    private int No_doc_SAT;
    private String descripcion;
    private double calificacion;
    private int id_tipoC;
    private int id_localidad;

    public Comercio(String nombre_comercio, String correo, String contrasenia, int telefono, String direccion, int no_doc_SAT, String descripcion, double calificacion, int id_tipoC, int id_localidad) {
        this.nombre_comercio = nombre_comercio;
        this.correo = correo;
        this.contrasenia = contrasenia;
        this.telefono = telefono;
        this.direccion = direccion;
        this.No_doc_SAT = no_doc_SAT;
        this.descripcion = descripcion;
        this.calificacion = calificacion;
        this.id_tipoC = id_tipoC;
        this.id_localidad = id_localidad;
    }

    public Comercio() {}

    //Registra un nuevo comercio en la base de datos
    public boolean agregarComercio(String nombre_comercio, String correo, String contrasenia, int telefono, String direccion, int no_doc_SAT, String descripcion, double calificacion, int id_tipoC, int id_localidad){
        ConexionOracle con = new ConexionOracle();
        ResultSet rs, rs1;
        try {
            Statement st = con.conexion().createStatement();
            Statement st1 = con.conexion().createStatement();
            rs = st.executeQuery("SELECT * FROM \"no_doc_sat\"");
            rs1 = st1.executeQuery("SELECT * FROM \"comercio\"");
            //Valida que el correo y el nombre de usuario no esten en uso aún
            while (rs1.next()){
                if(rs1.getString(2).equals(nombre_comercio) || rs1.getString(3).equals(correo)){
                    rs1.close();
                    st1.close();
                    con.close();
                    return false;
                }
            }
            //Valida que el numero de documento de la SAT ingresado sea veridico
            while (rs.next()){
                if(rs.getInt(1) == no_doc_SAT){
                    st.executeUpdate("INSERT INTO \"comercio\" (\"nombre_comercio\", \"correo\", \"contraseña\", \"telefono\",\"direccion\",\"No_doc_SAT\",\"descripcion\",\"calificacion\",\"id_tipoC\", \"id_localidad\")" +
                            "VALUES ('"+nombre_comercio+"','"+correo+"','"+contrasenia+"',"+telefono+",'"+direccion+"',"+no_doc_SAT+",'"+descripcion+"',"+calificacion+","+id_tipoC+","+id_localidad+")");
                    rs.close();
                    st.close();
                    con.close();
                    return true;
                }
            }
            return false;
        }catch (SQLException e){
            e.printStackTrace();
            return false;
        }
    }

    //Se realiza el login del Comercio
    public boolean loginComercio(String correoONombre_comercio, String contrasenia){
        ConexionOracle con = new ConexionOracle();
        try {
            Statement st = con.conexion().createStatement();
            ResultSet rs = st.executeQuery("SELECT * FROM \"comercio\"");
            //Se valida que el nombre o correo y contraseña ingresados si esten registrados
            while (rs.next()){
                if((rs.getString(2).equals(correoONombre_comercio) | rs.getString(3).equals(correoONombre_comercio)) && (rs.getString(4).equals(contrasenia))){
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

    public String getNombre_comercio() {
        return nombre_comercio;
    }

    public void setNombre_comercio(String nombre_comercio) {
        this.nombre_comercio = nombre_comercio;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getContrasenia() {
        return contrasenia;
    }

    public void setContrasenia(String contrasenia) {
        this.contrasenia = contrasenia;
    }

    public int getTelefono() {
        return telefono;
    }

    public void setTelefono(int telefono) {
        this.telefono = telefono;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public int getNo_doc_SAT() {
        return No_doc_SAT;
    }

    public void setNo_doc_SAT(int no_doc_SAT) {
        No_doc_SAT = no_doc_SAT;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public double getCalificacion() {
        return calificacion;
    }

    public void setCalificacion(double calificacion) {
        this.calificacion = calificacion;
    }

    public int getId_tipoC() {
        return id_tipoC;
    }

    public void setId_tipoC(int id_tipoC) {
        this.id_tipoC = id_tipoC;
    }

    public int getId_localidad() {
        return id_localidad;
    }

    public void setId_localidad(int id_localidad) {
        this.id_localidad = id_localidad;
    }
}
