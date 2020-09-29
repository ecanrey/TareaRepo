/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.sql.PreparedStatement;
/**
 *
 * @author hp
 */
public class Marca extends Producto{
    private String marca;
    private int idMarca;
    private Conexion cn;
    public Marca() {
        
    }

    public Marca(String marca, int idMarca, int idProducto, String producto, String Descripcion, String precio_costo, String precio_venta, String existencia) {
        super(idProducto, producto, Descripcion, precio_costo, precio_venta, existencia);
        this.marca = marca;
        this.idMarca = idMarca;
    }

        
    public String getMarca() {
        return marca;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }

    public int getIdMarca() {
        return idMarca;
    }

    public void setIdMarca(int idMarca) {
        this.idMarca = idMarca;
    }
    
    public HashMap drop_sangre(){
        HashMap <String,String> drop = new HashMap();
        try{
            cn = new Conexion();
            String query="SELECT idMarca as id,marca FROM db_empresa.marcas;";
            cn.abrir_conexion();
            ResultSet consulta = cn.conexionBD.createStatement().executeQuery(query);
            while(consulta.next()){
                drop.put(consulta.getString("id"),consulta.getString("marca"));
            }
            cn.cerrar_conexion();
        }catch(SQLException ex){
            System.out.println(ex.getMessage());
        }
        return drop;
    }
    
    @Override
    public void agregar(){
    try{
        PreparedStatement parametro;
        cn = new Conexion();
        String query="INSERT INTO productos(idProducto,producto,idMarca,Descripcion,precio_costo,precio_venta,existencia) VALUES (?,?,?,?,?,?,?);";
        cn.abrir_conexion();
        parametro = (PreparedStatement)cn.conexionBD.prepareStatement(query);
        parametro.setString(1, getidProducto());
        parametro.setString(2, getProducto());
        parametro.setInt(3, getIdMarca());
        parametro.setString(4, getDescripcion());
        parametro.setString(5, getPrecio_costo());
        parametro.setString(6, getPrecio_venta());
        parametro.setString(7, getExistencia());
        
        parametro.executeUpdate();
        cn.cerrar_conexion();
    }catch(SQLException ex){
        System .out.println(ex.getMessage());
    }
    }

    private String getidProducto() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    private int idMarca() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
