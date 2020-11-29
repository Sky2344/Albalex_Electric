<%-- 
    Document   : index
    Created on : 22/11/2020, 11:34:13 PM
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
        <link href="css/estilo01.css" rel="stylesheet" type="text/css"/>
        <link href="css/estiloMenu.css" rel="stylesheet" type="text/css"/>
        <title>INDEX</title>
    </head>
    <body>
        <div class="ewk_cont_banner">
        <div class="ewk_sombra">
            <div class="container">
                <nav class="menu">
                <input type="checkbox" href="#" class="menu-open" name="menu-open" id="menu-open"/>
                <label class="menu-open-button" for="menu-open">
                  <span class="hamburger hamburger-1"></span>
                  <span class="hamburger hamburger-2"></span>
                  <span class="hamburger hamburger-3"></span>
                </label>

                <a href="frmBuscarPedido.jsp" class="menu-item"> <i class="fa fa-bar-chart"></i><span class="glyphicon glyphicon-search" aria-hidden="true" style="font-size: 4em;position: absolute;left: 35px; top: 35px"></span></a>
                <a href="frmRegistrarProducto.jsp" class="menu-item"> <i class="fa fa-plus"></i><span class="glyphicon glyphicon-floppy-disk" aria-hidden="true" style="font-size: 4em;position: absolute;left: 35px; top: 35px"></span></a>
                <a href="frmRegistrarCliente.jsp" class="menu-item"> <i class="fa fa-heart"></i><span class="glyphicon glyphicon-user" aria-hidden="true" style="font-size: 4em;position: absolute;left: 35px; top: 35px"></span></a>
                <a href="frmCatalogoProducto.jsp" class="menu-item"> <i class="fa fa-envelope"></i><span class="glyphicon glyphicon-book" aria-hidden="true" style="font-size: 4em;position: absolute;left: 35px; top: 35px"></span></a>
                <a href="frmPedidos.jsp" class="menu-item"> <i class="fa fa-cog"></i><span class="glyphicon glyphicon-th-list" aria-hidden="true" style="font-size: 4em;position: absolute;left: 35px; top: 35px"></span></a>
                <a href="frmRegistrarPedido.jsp" class="menu-item"> <i class="fa fa-cog"></i><span class="glyphicon glyphicon-shopping-cart" aria-hidden="true" style="font-size: 4em;position: absolute;left: 35px; top: 35px"></span></a>
                </nav>
                </div>
            <svg xmlns="http://www.w3.org/2000/svg" version="1.1">
    <defs>
      <filter id="shadowed-goo">
          
          <feGaussianBlur in="SourceGraphic" result="blur" stdDeviation="10" />
          <feColorMatrix in="blur" mode="matrix" values="1 0 0 0 0  0 1 0 0 0  0 0 1 0 0  0 0 0 18 -7" result="goo" />
          <feGaussianBlur in="goo" stdDeviation="3" result="shadow" />
          <feColorMatrix in="shadow" mode="matrix" values="0 0 0 0 0  0 0 0 0 0  0 0 0 0 0  0 0 0 1 -0.2" result="shadow" />
          <feOffset in="shadow" dx="1" dy="1" result="shadow" />
          <feBlend in2="shadow" in="goo" result="goo" />
          <feBlend in2="goo" in="SourceGraphic" result="mix" />
      </filter>
      <filter id="goo">
          <feGaussianBlur in="SourceGraphic" result="blur" stdDeviation="10" />
          <feColorMatrix in="blur" mode="matrix" values="1 0 0 0 0  0 1 0 0 0  0 0 1 0 0  0 0 0 18 -7" result="goo" />
          <feBlend in2="goo" in="SourceGraphic" result="mix" />
      </filter>
    </defs>
</svg>
            </div>
        </div>
            
    </body>
</html>
