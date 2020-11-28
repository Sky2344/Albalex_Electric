<%-- 
    Document   : frmRegistrarProducto
    Created on : 23/11/2020, 02:23:02 AM
    Author     : Ramiro
--%>

<%@page import="logica.lVistaProducto"%>
<%@page import="datos.vistaProducto"%>
<%@page import="logica.lProducto"%>
<%@page import="datos.producto"%>
<%@page import="logica.lCategoria"%>
<%@page import="datos.categoria"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        
        <link href="css/estilo02.css" rel="stylesheet" type="text/css"/>
        <title>REGISTRAR PRODUCTO</title>
    </head>
    <body>
        
        <form name="frmRegistrarProducto" action="frmRegistrarProducto.jsp">
            <%
            categoria cat = new categoria();
            lCategoria lCat = new lCategoria();
            producto pro = new producto();
            lProducto lpro = new lProducto();
            vistaProducto visPro = new vistaProducto();
            lVistaProducto lVisPro = new lVistaProducto();
            lVisPro.ListaVistaProducto();
            lCat.ListaCategoria();
            
            %>
            <div class="ewk_cont_banner">
                <div class="ewk_sombra">
                    <div class="container">
                        <label class="control-label">Codigo:</label>
                        <input type="text"  name="txtCodigo" class="form-control" placeholder="Codigo del Producto" required="">
                        <label class="control-label">Nombre:</label>
                        <input type="text"  name="txtNombre" class="form-control" placeholder="Nombre del Producto" required="">
                        <label class="control-label">Categoria:</label>
                        <select name="CalCategoria" class="form-control" onchange="this.form['CATEGORIA'].value=this.value" required="">
                            <option value=" "  hidden=""></option>
                                <%
                                    for (int i = 0; i < lCategoria.lCat.size(); i++) {
                                        cat = (categoria)lCategoria.lCat.get(i);
                                %>
                                <option value="<%=cat.getID() %>"><%=cat.getNombre() %></option>
                                <%
                                    }
                                %>
                        </select>
                        <input class="form-control"  type="text" name="CATEGORIA" style="display:none">
                        <label class="control-label">Stock:</label>
                        <input type="number"  name="txtStock" class="form-control" placeholder="Stock del Producto" required="">
                        <label class="control-label">Precio:</label>
                        <input type="number" min="0.01" step="any" name="txtPrecio" class="form-control" placeholder="Precio del Producto" required="">
                        <br>
                        <input class="btn btn-block" type="submit" value="Agregar  Producto" name="btnAgregar" />
                        <table border="1" class="table">
                            <thead>
                                <tr>
                                    <th>CODIGO</th>
                                    <th>NOMBRE</th>
                                    <th>CATEGORIA</th>
                                    <th>STOCK</th>
                                    <th>PRECIO</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%
                                    for (int i = 0; i < lVistaProducto.lVisPro.size(); i++) {
                                        visPro = (vistaProducto)lVistaProducto.lVisPro.get(i);
                                    
                                %>
                                <tr>
                                    <td><%=visPro.getCodProducto() %></td>
                                    <td><%=visPro.getNombre() %></td>
                                    <td><%=visPro.getNomCategoria() %></td>
                                    <td><%=visPro.getStock() %></td>
                                    <td><%=visPro.getPrecio() %></td>
                                </tr>
                                <%
                                    }
                                    
                                    if(request.getParameter("btnAgregar")!=null){
                                        pro = new producto(request.getParameter("txtCodigo"), request.getParameter("txtNombre"), Integer.parseInt(request.getParameter("CATEGORIA")), Integer.parseInt(request.getParameter("txtStock")), Float.parseFloat(request.getParameter("txtPrecio")));
                                        lpro.InsertarProducto(pro);
                                    }
                                %>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </form>
    </body>
</html>
