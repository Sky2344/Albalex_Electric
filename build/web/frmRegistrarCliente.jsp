<%-- 
    Document   : frmRegistrarCliente
    Created on : 23/11/2020, 02:34:38 AM
    Author     : Ramiro
--%>

<%@page import="logica.lCliente"%>
<%@page import="datos.cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <link href="css/estilo03.css" rel="stylesheet" type="text/css"/>
        <link href="css/ex2.css" rel="stylesheet" type="text/css"/>
        <title>REGISTRAR PRODUCTO</title>
    </head>
    <body>
        <form name="frmRegistrarCliente" action="frmRegistrarCliente.jsp">
        <%
            cliente cli = new cliente();
            lCliente lCli = new lCliente();
            if(request.getParameter("btnAgregar")!=null){
                                cli = new  cliente(request.getParameter("txtDNI"), request.getParameter("txtNombre"), request.getParameter("txtDireccion"), request.getParameter("txtTelefono"), request.getParameter("txtCorreo"));
                                lCli.InsertarCliente(cli);
                            }
            lCli.ListaCliente();
        %>
        
        <div class="ewk_cont_banner">
            <div class="ewk_sombra">
                <div class="container">
                    <label class="control-label">DNI/RUC:</label>
                    <input type="text"  name="txtDNI" class="form-control" placeholder="RUC/DNI" required="">
                    <label class="control-label">Nombre:</label>
                    <input type="text"  name="txtNombre" class="form-control" placeholder="Nombre del cliente" required="">
                    <label class="control-label">Direccion:</label>
                    <input type="text"  name="txtDireccion" class="form-control" placeholder="Direccion del cliente" required="">
                    <label class="control-label">Telefono:</label>
                    <input type="number"  name="txtTelefono" class="form-control" placeholder="Telefono del cliente" required="">
                    <label class="control-label">@email</label>
                    <input type="text"  name="txtCorreo" class="form-control" placeholder="Correo del cliente" required="">
                    <br>
                    <input class="btn btn-block" type="submit" value="Agregar  Producto" name="btnAgregar" />
                    <br>
                    <div class="ex3">
                    <table border="1" class="table">
                        <thead>
                            <tr>
                                <th>RUC/DNI</th>
                                <th>NOMBRE</th>
                                <th>Direccion</th>
                                <th>Telefono</th>
                                <th>Correo</th>
                            </tr>
                        </thead>

                        <tbody>
                        <%
                            for (int i = 0; i < lCliente.lCli.size(); i++) {
                                    cli = (cliente)lCliente.lCli.get(i);
                                
                        %>
                            <tr>
                                <td><%=cli.getDNI_RUC() %></td>
                                <td><%=cli.getNombre() %></td>
                                <td><%=cli.getDireccion() %></td>
                                <td><%=cli.getTelefono() %></td>
                                <td><%=cli.getEmail() %></td>
                            </tr>
                        <%
                            }
                            
                            
                        %>
                        </tbody>
                    </table>
                        </div>
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
