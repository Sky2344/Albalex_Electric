<%-- 
    Document   : frmCatalogoProducto
    Created on : 23/11/2020, 02:40:33 AM
    Author     : Ramiro
--%>

<%@page import="logica.lVistaProducto"%>
<%@page import="datos.vistaProducto"%>
<%@page import="logica.lCategoria"%>
<%@page import="datos.categoria"%>
<%@page import="logica.lProducto"%>
<%@page import="datos.producto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <link href="css/estilo03.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <form name="frmCatalogoProductos" action="frmCatalogoProducto.jsp">
            <%
                producto pro = new producto();
                lProducto lPro = new lProducto();
                categoria cat = new categoria();
                lCategoria lCat = new lCategoria();
                vistaProducto visPro = new vistaProducto();
                lVistaProducto lVisPro = new lVistaProducto();
                
                
                if (request.getParameter("btnGuardar")!=null) {
                            for (int i = 0; i < lVistaProducto.lVisPro.size(); i++) {
                                visPro = (vistaProducto)lVistaProducto.lVisPro.get(i);
                                lPro.ModificarProducto(request.getParameter("codigo "+i), Integer.parseInt(request.getParameter("Stock "+i)), Float.parseFloat(request.getParameter("Precio "+i)));
                                
                           }
                        }
                if (request.getParameter("btnFiltrar")!=null) {
                    
                    lVisPro.ListaVistaProductoCategoria(request.getParameter("CATEGORIA"));
                
                }
                if (request.getParameter("btnFiltrar")==null || request.getParameter("btnGuardar")!=null) {
                        lVisPro.ListaVistaProducto();
                    }
            
            %>
        <div class="ewk_cont_banner">
            <div class="ewk_sombra">
                <div class="container">
                    <%-------------------------------------------------------------%>
                    <div class="row show-grid">
                        <div class="col-md-4">
                            
                        </div>
                        <div class="col-md-1">
                            <label>Categoria</label>
                        </div>
                        <div class="col-md-2">
                            <select name="CalCategoria" class="form-control" onchange="this.form['CATEGORIA'].value=this.value" required="">
                            <option value=" "  hidden=""></option>
                                <%
                                    lCat.ListaCategoria();
                                    for (int i = 0; i < lCategoria.lCat.size(); i++) {
                                        cat = (categoria)lCategoria.lCat.get(i);
                                %>
                                <option value="<%=cat.getNombre() %>"><%=cat.getNombre() %></option>
                                <%
                                    }
                                %>
                        </select>
                        <input class="form-control"  type="text" name="CATEGORIA" style="display:none">
                        </div>
                        <div class="col-md-1">
                            <button class="btn btn-default" type="submit" name="btnFiltrar">FILTRAR
                                <span class="glyphicon glyphicon-search" aria-hidden="true"></span>
                            </button>
                        </div>
                        <div class="col-md-4">
                            
                        </div>
                    </div>
                    <br>
                    <%-------------------------------------------------------------%>
                    <div class="row show-grid">
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
                                <td><input  type="number" name="Stock <%=i %>" value="<%=visPro.getStock() %>" size="2px"> </td>
                                <td><input  type="number" min="0.01" step="any"  name="Precio <%=i %>" value="<%=visPro.getPrecio() %>" size="2px"> </td>
                            </tr>
                        <input class="form-control"  type="text" name="codigo <%=i %>" value="<%=visPro.getCodProducto() %>" style="display:none">
                            <%
                                }
                            %>
                        </tbody>
                    </table>
                    </div>
                        
                   <%---------------------------------------------------------------------%>
                   <div class="row show-grid">
                       <div class="col-md-5">
                           
                       </div>
                       <div class="col-md-1">
                           <button class="btn btn-default" type="submit" name="btnGuardar">Guardar 
                                <span class="glyphicon glyphicon-floppy-disk" aria-hidden="true" ></span>
                            </button>
                        </div>
                       <%
                       
                       %>
                   </div>
                </div>
            </div>
        </div>
        </form>
    </body>
</html>
