<%-- 
    Document   : frmPedido
    Created on : 23/11/2020, 01:06:51 AM
    Author     : Ramiro
--%>

<%@page import="logica.lDetallePedido"%>
<%@page import="datos.detallePedido"%>
<%@page import="java.util.Calendar"%>
<%@page import="logica.lPedido"%>
<%@page import="datos.pedido"%>
<%@page import="logica.lTemporalProductos"%>
<%@page import="datos.temporalProductos"%>
<%@page import="datos.vistaProducto"%>
<%@page import="logica.lVistaProducto"%>
<%@page import="datos.distrito"%>
<%@page import="logica.lDistrito"%>
<%@page import="logica.lTemporalCliente"%>
<%@page import="datos.temporalCliente"%>
<%@page import="datos.cliente"%>
<%@page import="logica.lCliente"%>
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
        <form name="frmPedido" action="frmPedido.jsp">
            <%
                lCliente lCli = new lCliente();
                cliente cli = new cliente();
                temporalCliente tempCli = new temporalCliente();
                lTemporalCliente lTempCli = new lTemporalCliente();
                lDistrito lDis = new lDistrito();
                distrito dis = new distrito();
                lVistaProducto lVisPro = new lVistaProducto();
                vistaProducto visPro = new vistaProducto();
                temporalProductos tempPro = new temporalProductos();
                lTemporalProductos lTempPro = new lTemporalProductos();
                pedido ped = new pedido();
                lPedido lPed = new lPedido();
                Calendar c = Calendar.getInstance();
                detallePedido detPed = new detallePedido();
                lDetallePedido lDetPed = new lDetallePedido();
                int dia = Integer.parseInt(Integer.toString(c.get(Calendar.DATE)));
                int mes = Integer.parseInt(Integer.toString(c.get(Calendar.MONTH)));
                int annio = Integer.parseInt(Integer.toString(c.get(Calendar.YEAR)));
                lDis.ListaDistrito();
                float Monto= 0;
                String RUC = "NN";
                String Nombre = "NN";
                temporalProductos temp = new temporalProductos();
                String NombrePro = "Nombre de producto", Categoria = "Categoria del Producto", Precio = "S/0.0"; 
                if (request.getParameter("btnAgregar")!=null) {
                    tempCli = (temporalCliente)lTemporalCliente.lTempCli.get(0);
                    visPro = (vistaProducto)lVistaProducto.lVisPro.get(0);
                    RUC = tempCli.getRUN_DNI();
                    Nombre = tempCli.getNombre();
                    float preUni;
                    preUni = visPro.getPrecio();
                    float preTot = 0;
                    int Can = Integer.parseInt(request.getParameter("txtCantidad"));
                    preTot = preUni * Can;
                    tempPro = new temporalProductos(visPro.getCodProducto(), visPro.getNombre(), preUni, preTot,  Can);
                    lTemporalProductos.lTempPro.add(tempPro);
                    }
                if (request.getParameter("btnBuscar")!=null){
                    tempCli = (temporalCliente)lTemporalCliente.lTempCli.get(0);
                    RUC = tempCli.getRUN_DNI();
                    Nombre = tempCli.getNombre();
                    lVisPro.BuscarProducto(request.getParameter("txtCodigo"));
                    visPro = (vistaProducto)lVistaProducto.lVisPro.get(0);
                    NombrePro = visPro.getNombre();
                    Categoria = visPro.getNomCategoria();
                    Precio = String.valueOf(visPro.getPrecio());
                    
                }
                
                if (request.getParameter("btnNuevo")!=null) {
                    tempCli = (temporalCliente)lTemporalCliente.lTempCli.get(0);
                    RUC = tempCli.getRUN_DNI();
                    Nombre = tempCli.getNombre();
                    lTemporalProductos.lTempPro.clear();
                }
                if (request.getParameter("btnGenerarPedido")!=null) {
                    lTempCli.BuscarCliente(request.getParameter("txtDNIRUC"));
                    tempCli = (temporalCliente)lTemporalCliente.lTempCli.get(0);
                    RUC = tempCli.getRUN_DNI();
                    Nombre = tempCli.getNombre();
                    lTemporalProductos.lTempPro.clear();
                }
                
            %>
            <div class="ewk_cont_banner">
                <div class="ewk_sombra">
                    <div class="container">
                        <%-------------------------------------------------------------%>
                        <div class="row show-grid">
                            <div class="col-md-1">
                                <label>DNI/RUC:</label>
                            </div>
                            <div class="col-md-2">
                                <input type="text"  name="txtDNI" class="form-control"  value="<%=RUC %>" disabled>
                            </div>
                            <div class="col-md-1">
                                <label>Cliente</label>
                            </div>
                            <div class="col-md-3">
                                <input type="text"  name="txtNombre" class="form-control" value="<%=Nombre %>" disabled>
                            </div>
                            <div class="col-md-5">
                            </div>
                        </div>
                        <br>
                        <%-------------------------------------------------------------%>
                        <div class="row show-grid">
                            <div class="col-md-1">
                                <label>Direccion:</label>
                            </div>
                            <div class="col-md-6">
                                <input type="text"  name="txtDIRECCION" class="form-control"  value="Direccion" >
                            </div>
                            <div class="col-md-1">
                                <label>Distrito:</label>
                            </div>
                            <div class="col-md-2">
                                
                                    
                                    <select ID="Testselect" name="CalCategoria" class="form-control" onchange="this.form['DISTRITO'].value=this.value" >
                                    <option value=" "  hidden=""> </option>
                                    <%
                                    for (int i = 0; i < lDistrito.lDis.size(); i++) {
                                        dis = (distrito)lDistrito.lDis.get(i);
                                    %>
                                    <option value="<%=dis.getIdDIstrito() %>"><%=dis.getDistrito() %></option>
                                    
                                    <%
                                        }
                                    %></select><%
                                        
                                        
                                    %>
                                    <input class="form-control"  type="text" name="DISTRITO" style="display:none">
                                
                            </div>
                        </div>
                        <br>
                        <br>
                        <%-------------------------------------------------------------%>
                        <div class="row show-grid">
                            <div class="col-md-8">

                            </div>
                            <div class="col-md-1">
                                <label class="control-label">Codigo:</label>
                            </div>
                            <div class="col-md-2">
                                <input type="text"  name="txtCodigo" class="form-control" placeholder="Codigo del producto" >
                            </div>
                            <div class="col-md-1">
                                <button class="btn btn-default" type="submit" name="btnBuscar">BUSCAR
                                    <span class="glyphicon glyphicon-search" aria-hidden="true"></span>
                                </button>
                            </div>

                        </div>
                        <br>
                        <%-------------------------------------------------------------%>
                        <div class="row show-grid">
                            <div class="col-md-1">
                                <label class="control-label">Nombre:</label>
                            </div>
                            <div class="col-md-2">
                                <input type="text"  name="txtNombre" class="form-control" value="<%=NombrePro %>" placeholder="Nombre del producto" disabled>
                            </div>
                            <div class="col-md-1">
                                <label class="control-label">Categoria</label>
                            </div>
                            <div class="col-md-2">
                                <input type="text"  name="txtCategoria" class="form-control" value="<%=Categoria %>" placeholder="Categoria del producto" disabled>
                            </div>
                            <div class="col-md-1">
                                <label class="control-label">Precio</label>
                            </div>
                            <div class="col-md-1">
                                <input type="text"  name="txtPrecio" class="form-control" value="<%=Precio %>" placeholder="S/0.0" disabled>
                            </div>
                        </div>
                        <br>
                        <%-------------------------------------------------------------%>
                        <div class="row show-grid">
                            <div class="col-md-9">

                            </div>
                            <div class="col-md-1">
                                <label class="control-label">Cantidad</label>
                            </div>
                            <div class="col-md-1">
                                <input type="Number"  name="txtCantidad" max="<%=visPro.getStock() %>" class="form-control" placeholder="N°" >
                            </div>
                            <div class="col-md-1">
                                <button class="btn btn-default" type="submit" name="btnAgregar">AGREGAR
                                    <span class="glyphicon glyphicon-plus" aria-hidden="true"></span>
                                </button>
                            </div>
                        </div>
                        <br>
                        <%-------------------------------------------------------------%>
                        <div class="row show-grid">
                            <table border="1" class="table">
                                <thead>
                                    <tr>
                                        <th>Codigo</th>
                                        <th>Nombre</th>

                                        <th>Precio Unitario</th>
                                        <th>Cantidad</th>
                                        <th>PrecioTotal</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <%
                                        for (int i = 0; i < lTemporalProductos.lTempPro.size(); i++) {
                                            tempPro = (temporalProductos)lTemporalProductos.lTempPro.get(i);
                                          
                                        
                                    %>
                                    <tr>
                                        <td><%=tempPro.getCodigo() %></td>
                                        <td><%=tempPro.getNombre() %></td>
                                        <td><%=tempPro.getPrecio_Unitario() %></td>
                                        <td><%=tempPro.getCantidad() %></td>
                                        <td>S/<%=tempPro.getPrecioTotal() %></td>
                                    </tr>
                                    <%
                                        Monto += tempPro.getPrecioTotal();
                                        }
                                        if (request.getParameter("btnGenerar")!=null) {
                                            tempCli = (temporalCliente)lTemporalCliente.lTempCli.get(0);
                                            RUC = tempCli.getRUN_DNI();
                                            Nombre = tempCli.getNombre();
                                            ped = new pedido(RUC, dia+"/"+mes+"/"+annio, request.getParameter("txtDIRECCION"), Monto, Integer.parseInt(request.getParameter("DISTRITO")) , 1);
                                            lPed.InsertarPedido(ped);
                                            for (int i = 0; i < lTemporalProductos.lTempPro.size(); i++) {
                                                tempPro = (temporalProductos)lTemporalProductos.lTempPro.get(i);
                                                detPed = new detallePedido(Integer.parseInt(lPed.ObtenerIdPedido()), tempPro.getCantidad(), tempPro.getCodigo(), tempPro.getPrecioTotal());
                                                lDetPed.InsertarDetallePedido(detPed);
                                            }
                                            lTemporalProductos.lTempPro.clear();
                                        }
                                    %>
                                </tbody>
                            </table>
                        </div>
                                
                        <br>
                        
                        
                        <%-------------------------------------------------------------%>
                        <div class="row show-grid">
                            <div class="col-md-9">

                            </div>
                            <div class="col-md-1">
                                <label class="control-label">Total</label>
                            </div>
                            <div class="col-md-2">
                                <input type="text"  name="txtMonto" class="form-control" placeholder="S/0.0" disabled value="S/.<%=Monto %>">
                            </div>
                        </div>
                        <br>
                        <%-------------------------------------------------------------%>
                        <div class="row show-grid">
                            <div class="col-md-1"></div>
                            <div class="col-md-1">
                                <a href="frmRegistrarPedido.jsp" class="btn btn-default" role="button" title="REGRESAR">REGRESAR
                                    <span class="glyphicon glyphicon-step-backward" aria-hidden="true"></span>
                                </a>
                            </div>
                            <div class="col-md-3"></div>
                            <div class="col-md-1">
                                <button class="btn btn-default" type="submit" name="btnNuevo">Nuevo
                                    <span class="glyphicon glyphicon-repeat" aria-hidden="true"></span>
                                </button>
                            </div>
                            <div class="col-md-4"></div>
                            <div class="col-md-1">
                                <button class="btn btn-default" type="submit" name="btnGenerar">Generar
                                    <span class="glyphicon glyphicon-ok" aria-hidden="true"></span>
                                </button>
                            </div>
                                <div class="col-md-1"></div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </body>
</html>
