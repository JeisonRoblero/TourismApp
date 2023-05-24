package com.project.clases;

import java.sql.*;

public class Producto {

    private int id_producto;
    private String nombre_producto;
    private String descripcion;
    private double precio;
    private int estado;
    private int id_comercio;

    public Producto(int id_producto, String nombre_producto, String descripcion, double precio, int estado, int id_comercio) {
        this.id_producto = id_producto;
        this.nombre_producto = nombre_producto;
        this.descripcion = descripcion;
        this.precio = precio;
        this.estado = estado;
        this.id_comercio = id_comercio;
    }

    public Producto(){}

    public boolean agregarProducto(String nombre_producto, String descripcion, double precio, int estado, int id_comercio, String imagen){
        ConexionOracle con = new ConexionOracle();
        try {
            CallableStatement cs = con.conexion().prepareCall("CALL PROC_INSERTAR_PRODUCTO_IMAGEN(?,?,?,?,?,?)");
            cs.setString(1,nombre_producto);
            cs.setString(2,descripcion);
            cs.setDouble(3,precio);
            cs.setInt(4,estado);
            cs.setInt(5,id_comercio);
            cs.setString(6,imagen);
            cs.execute();
            cs.close();
            con.close();
            return true;
        }catch (SQLException e){
            e.printStackTrace();
            return false;
        }
    }
    public Producto devolverProducto(int id_producto){
        ConexionOracle con = new ConexionOracle();
        Producto producto = new Producto();
        try {
            Statement st = con.conexion().createStatement();
            ResultSet rs = st.executeQuery("SELECT * FROM \"producto\"");
            //Encotrar el producto en la base de datos y llevar un objeto producto con lo obtenido de esta
            while (rs.next()){
                if(rs.getInt(1) == id_producto){
                    producto.setId_producto(rs.getInt(1));
                    producto.setNombre_producto(rs.getString(2));
                    producto.setDescripcion(rs.getString(3));
                    producto.setPrecio(rs.getDouble(4));
                    producto.setEstado(rs.getInt(5));
                    producto.setId_comercio(rs.getInt(6));
                    rs.close();
                    st.close();
                    con.close();
                    return producto;
                }
            }
        }catch (SQLException e){
            e.printStackTrace();
        }
        return new Producto(-1,"","",-1,-1,-1);
    }

    public boolean actualizarProducto(int id_producto, String nombre_producto, String descripcion, double precio, int estado) {
        ConexionOracle con = new ConexionOracle();
        try {
            PreparedStatement ps = con.conexion().prepareStatement("UPDATE \"producto\" SET \"nombre_producto\"='"+nombre_producto+"',\"descripcion\"='"+descripcion+"',\"precio\"="+precio+",\"estado\"="+estado+" WHERE \"id_producto\"="+id_producto);
            ps.executeUpdate();
            ps.close();
            con.close();
            return true;
        }catch (SQLException e){
            e.printStackTrace();
            return false;
        }

    }

    public int getId_producto() {
        return id_producto;
    }

    public void setId_producto(int id_producto) {
        this.id_producto = id_producto;
    }

    public String getNombre_producto() {
        return nombre_producto;
    }

    public void setNombre_producto(String nombre_producto) {
        this.nombre_producto = nombre_producto;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public double getPrecio() {
        return precio;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
    }

    public int getEstado() {
        return estado;
    }

    public void setEstado(int estado) {
        this.estado = estado;
    }

    public int getId_comercio() {
        return id_comercio;
    }

    public void setId_comercio(int id_comercio) {
        this.id_comercio = id_comercio;
    }

    @Override
    public String toString() {
        return "Producto{" +
                "id_producto=" + id_producto +
                ", nombre_producto='" + nombre_producto + '\'' +
                ", descripcion='" + descripcion + '\'' +
                ", precio=" + precio +
                ", estado=" + estado +
                ", id_comercio=" + id_comercio +
                '}';
    }
}
