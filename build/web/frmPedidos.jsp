<%-- 
    Document   : frmPedidos
    Created on : 27/11/2020, 07:59:14 PM
    Author     : Ramiro
--%>

<%@page import="datos.distrito"%>
<%@page import="logica.lDistrito"%>
<%@page import="datos.vistaPedido"%>
<%@page import="logica.lVistaPedido"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        
        <link href="css/estilo03.css" rel="stylesheet" type="text/css"/>
        
        <title>Pedidos</title>
    </head>
    <body>
        <form name="Pedidos" action="frmPedidos.jsp">
        
        <%
            lVistaPedido lVisPed = new lVistaPedido();
            vistaPedido visPed = new vistaPedido();
            lDistrito lDis = new lDistrito();
            distrito dis = new distrito();
            lDis.ListaDistrito();
            lVisPed.ListaVistaPedido();
            
            if (request.getParameter("btnFiltrar")!=null) {
                    lVisPed.ListaVistaPedidoDistrito(request.getParameter("DISTRITO"));
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
                                <label>Distrito:</label>
                        </div>
                        <div class="col-md-3">
                            <select ID="Testselect" name="CalDistrito" class="form-control" onchange="this.form['DISTRITO'].value=this.value" required="">
                            <option value=" "  hidden=""> </option>
                            <%
                            for (int i = 0; i < lDistrito.lDis.size(); i++) {
                                dis = (distrito)lDistrito.lDis.get(i);
                            %>
                            <option value="<%=dis.getDistrito() %>"><%=dis.getDistrito() %></option>
                            <%
                                }
                            %></select>
                            <input class="form-control"  type="text" name="DISTRITO" style="display:none">
                        </div>
                            <div class="col-md-1">
                            <button class="btn btn-default" type="submit" name="btnFiltrar">FILTRAR
                                <span class="glyphicon glyphicon-search" aria-hidden="true"></span>
                            </button>
                        </div>
                    </div>
                    <%-------------------------------------------------------------%>
                    <div class="row show-grid">
                        <table border="1" class="table">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Nombre</th>
                                    <th>Direccion</th>
                                    <th>Distrito</th>
                                    <th>Fecha</th>
                                    <th>Monto Total</th>
                                    <th>Estado</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%
                                    for (int i = 0; i < lVistaPedido.lVisPed.size(); i++) {
                                            visPed = (vistaPedido)lVistaPedido.lVisPed.get(i);
                                        
                                    
                                %>
                                <tr>
                                    <td><%=visPed.getIdPedido() %></td>
                                    <td><%=visPed.getNombre() %></td>
                                    <td><%=visPed.getDireccion() %></td>
                                    <td><%=visPed.getDistrito() %></td>
                                    <td><%=visPed.getFecha() %></td>
                                    <td><%=visPed.getMontoTotal() %></td>
                                    <td><%=visPed.getEstado() %></td>
                                </tr>
                                <%
                                    
                                   }
                                %>
                            </tbody>
                        </table>
                    </div>        
                </div>
            </div>
        </div>
                            </form>
    </body>
</html>
