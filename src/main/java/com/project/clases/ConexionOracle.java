package com.project.clases;
import java.sql.*;

public class ConexionOracle {
    Connection con=null;
    String url = "jdbc:oracle:thin:@localhost:1521:orcl";
    String user = "P3AnalisisDeSistemasI";
    String pass = "12345";

    //Se realiza la conexion con la base de datos, este metodo sera llamado cada que se necesita hacer CRUD
    public Connection conexion(){
        try{
            Class.forName("oracle.jdbc.driver.OracleDriver");
            con = DriverManager.getConnection(url, user, pass);
        }catch (Exception e){
            e.printStackTrace();
        }
        return con;
    }

}
