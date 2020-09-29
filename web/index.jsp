<%-- 
    Document   : index
    Created on : 20/09/2020, 09:09:07 PM
    Author     : hp
--%>
<%@page import="modelo.Marca"%>
<%@page  import="java.util.HashMap" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Productos</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    </head>
    <body>
        <h1>Formulario Productos</h1>
        <div class="container">
            <form action="sr_producto"  method="get" class="form-group">
                <label for="lbl_codigo">Id Producto:</label>
                <input type="text" name="txt_codigo" id="txt_codigo" class="form-control" placeholder="Ejemplo: 001" required>
                <label for="lbl_producto">Producto:</label>
                <input type="text" name="txt_producto" id="txt_producto" class="form-control" placeholder="Ejemplo: Nombre del producto" required>
                <label for="lbl_marca">Marca:</label>
                <select name="drop_marca" id="drop_marca" class="form-control">
                    <%--
                    <%
                       Marca marca = new Marca();
                       HashMap <String,String> drop = marca.drop_sangre();
                       for(String i:drop.keySet()){
                           out.println("<option value='"+ i + "' >" + drop.get(i) + "</option>");
                       }
                    %>
                    --%>
                    
                    <option value="1">Opcion 1</option>
                    <option value="2">Opcion 2</option>
                    <option value="3">Opcion 3</option>
                    
                    
                </select>
                <label for="lbl_Descripcion">Descripcion:</label>
                <input type="text" name="txt_Descripcion" id="txt_Descripcion" class="form-control" placeholder="Ejemplo: Caracteristicas" required>
                <label for="lbl_precio_costo">Precio Costo:</label>
                <input type="number" name="txt_precio_costo" id="txt_precio_costo" class="form-control" placeholder="Ejemplo: 0.00" required>
                <label for="lbl_precio_venta">Precio Venta:</label>
                <input type="number" name="txt_precio_venta" id="txt_precio_venta" class="form-control" placeholder="Ejemplo: 0.00" required>
                <label for="lbl_existencia">Existencia:</label>
                <input type="number" name="txt_existencia" id="txt_existencia" class="form-control" placeholder="Ejemplo: 0" required>
                <br>
                <button  name="btn_agregar" id="btn_agregar" value="agregar" class="btn btn-success">Agregar</button>
                
            </form>
        </div>
        
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
    </body>
</html>
