<%-- 
    Document   : frmRegistrarPedido
    Created on : 23/11/2020, 12:27:50 AM
    Author     : Ramiro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <link href="css/estilo02.css" rel="stylesheet" type="text/css"/>
        <title>REGISTRAR PEDIDO</title>
    </head>
    <body>
        <form name="frmPedido" action="frmPedido.jsp">
            <div class="ewk_cont_banner">
                <div class="ewk_sombra">
                    <div class="container">
                        <div class="col-sm-11">
                            <label class="control-label col-sm-2" for="email">DNI/RUC:</label>
                            <input type="text"  name="txtDNIRUC" class="form-control" id="email" placeholder="Ingresar DNI/RUC" required="">
                        </div>
                        <label class="control-label col-sm-2" for="pwd"> </label>
                            <input class="btn btn-block" type="submit" value="Generar Pedido" name="btnGenerarPedido" />
                    </div>
                </div>
            </div>
        </form>
    </body>
</html>
