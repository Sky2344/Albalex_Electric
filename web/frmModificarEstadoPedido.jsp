<%-- 
    Document   : frmModificarEstadoPedido
    Created on : 27/11/2020, 10:39:36 PM
    Author     : Ramiro
--%>

<%@page import="logica.lPedido"%>
<%@page import="logica.lEstado"%>
<%@page import="datos.estado"%>
<%@page import="logica.lVistaPedido"%>
<%@page import="datos.vistaPedido"%>
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
        <form name="frmModificarEstado" action="frmModificarEstadoPedido.jsp">
            <%
                vistaPedido visPed = new vistaPedido();
                lVistaPedido lVisPed = new lVistaPedido();
                lPedido lPed = new lPedido();
                int ID = Integer.parseInt(request.getParameter("txtID"));
                estado est = new estado();
                lEstado lEst = new lEstado();
                
                lEst.ListarEstado();
                
                if(request.getParameter("btnActualizar")!=null){
                    lPed.ModificarPedido(request.getParameter("txtID"), request.getParameter("ESTADO"));
                }
                lVisPed.ListaVistaPedidoID(ID);
                visPed = (vistaPedido)lVistaPedido.lVisPed.get(0);
                
                
            %>
            <input class="form-control"  type="text"  value="<%=ID %>" name="txtID" style="display:none">
            <div class="ewk_cont_banner">
                <div class="ewk_sombra">
                    <div class="container">
                    <%-------------------------------------------------------------%>
                    <div class="row show-grid">
                        <div class="col-md-1">
                            <label>Codigo: </label>
                        </div>
                        <div class="col-md-1">
                            <label><%=visPed.getIdPedido() %></label>
                        </div>
                        <div class="col-md-1">
                            <label>Cliente: </label>
                        </div>
                        <div class="col-md-3">
                            <label><%=visPed.getNombre() %></label>
                        </div>
                        <div class="col-md-1">
                            <label>Direccion: </label>
                        </div>
                        <div class="col-md-3">
                            <label><%=visPed.getDireccion()%></label>
                        </div>
                        <div class="col-md-1">
                            <label>Ditrito:</label>
                        </div>
                        <div class="col-md-1">
                            <label><%=visPed.getDistrito()%></label>
                        </div>
                        
                    </div>
                        <br>
                        <br>
                    <%-------------------------------------------------------------%>
                    <div class="row show-grid">
                        <div class="col-md-1">
                            <label>Fecha:</label>
                        </div>
                        <div class="col-md-2">
                            <label><%=visPed.getFecha()%></label>
                        </div>
                        <div class="col-md-1">
                            <label>Monto:</label>
                        </div>
                        <div class="col-md-1">
                            <label><%=visPed.getMontoTotal()%></label>
                        </div>
                        <div class="col-md-1">
                            <label>Estado:</label>
                        </div>
                        <div class="col-md-2">
                            <label><%=visPed.getEstado()%></label>
                        </div>
                    </div>
                    <%-------------------------------------------------------------%>
                    <div class="row show-grid">
                        <div class="col-md-2">
                            <label>Nuevo Estado:</label>
                        </div>
                        <div class="col-md-2">
                            <select ID="Testselect" name="CalCategoria" class="form-control" onchange="this.form['ESTADO'].value=this.value" >
                                <option value=" "  hidden=""> </option>
                                <%
                                    for (int i = 0; i < lEstado.lEst.size(); i++) {
                                            est = (estado)lEstado.lEst.get(i);
                                        
                                %>
                                    <option value="<%=est.getIdEstado()%>"><%=est.getNomEstado()%></option>
                                <%
                                    }
                                %>
                            </select>
                            <input class="form-control"  type="text" name="ESTADO" style="display:none">
                        </div>
                            <div class="col-md-1">
                            
                            <button class="btn btn-default" type="submit" name="btnActualizar">ACTUALIZAR
                                <span class="glyphicon glyphicon-plus" aria-hidden="true"></span>
                            </button>
                            </div>
                    </div>
                            <br>
                            <br>
                            <div class="row show-grid">
                       <div class="col-md-5">
                           </div> 
                            <div class="col-md-2">
                                <a href="index.jsp" class="btn btn-default" role="button" title="INICIO">INICIO
                                    <span class="glyphicon glyphicon-step-backward" aria-hidden="true"></span>
                                </a>
                            </div>
                        </div>
                </div>
                            </div>
            </div>
        </form>
    </body>
</html>
