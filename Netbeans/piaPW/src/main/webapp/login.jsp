<%-- 
    Document   : login
    Created on : 3/06/2021, 07:07:01 PM
    Author     : jctor
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="assets/css/estilo_login.css">
    <link rel="shortcut icon" href="assets//imagenes//LOGO_CineForo.png"  type="image/x-icon">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Itim&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Truculenta:wght@400;500&display=swap" rel="stylesheet">
</head>
<body>
    <header class="header">
        <div class="container logo-nav-container"> 
             <a href="index.jsp">  
        <img src="assets//imagenes//CINEFORO_Logo.png" width="250px" height="60" class = "logo"/>
        </a>
        <nav class = "navigation">
        <ul> 
        <li><a href="login.jsp"> Login </a></li>
        <li><a href="registro_usuario.jsp"> Sign up </a></li>
        </ul>
        </nav>
        </div>
        </header>
    
        <h1 class="Buscador">
            <input type="text" name="search" placeholder= "Busca tu pelicula" class="src" autocomplete="off"> 
            <i class="fas fa-search"></i>
        </h1>
    
        <h1 class="Buscar">
            <input type="button" value="Buscar" class="bot">
            <select name="Categorias" id="categ" placeholder="Categorias" class="combo">
                <option> Categoria</option>
            </select>
        </h1>
    
        <section class = "BusquedaAvanzada">
            <p >Busqueda Avanzada</p>
            <input type="text" name="search" placeholder= "Busca tu pelicula" class="buscAv" autocomplete="off"> 
            <select name="Categorias" id="categ" placeholder="Categorias" class="comboAv">
                <option> Categoria</option>
            <input type="date" id="fecha1" name="fecha1" class="filt">
            <input type="date" id="fecha2" name="fecha2" class="filt">
            <input type = "text" name = "Utiles" id = utiles placeholder="Comentarios utiles" class="filt">
            <input type = "text" name = "Favoritos" id = favorito placeholder="Numero de Favoritos" class="filt">
            <input type="button" value="Buscar" class="botAv">
        </section> 

        <main class="main">

<section class="Login">
    <h4>Iniciar sesi??n en CineForo</h4>
    <form action="LogInController" method="POST">
<input class="controls" type="text" name="usuario" id="usuario" placeholder="Ingresa el nombre de usuario">
<input class="controls" type="password" name="contrasena" id="contrase??a" placeholder="Ingresa tu contrase??a">
<input class="boton" type="submit" value="Ingresar">
<p><a href="registro_usuario.jsp">Registrate en CineForo</a></p>
</form>
</section>

        </main>

        <footer class= "footer">
            <div class= "container">
            <nav class="row">
                <!-- LOGO -->
                <a href="#" class="logotipo">
                    <img src="assets//imagenes//CINEFORO_Logo.png" width="250px" height="100" alt ="Logo marca" class="img-logo mr-2">
                </a>
                 <!-- MENU1 --> 
                 <ul class="Info">
                     <li class="font-weight-bold text-uppercase">Informacion de Contacto</li>
                     <li >Telefonito</li>
                 </ul>
                  <!-- MENU2 --> 
                  <ul class="Catego">
                    <li class="font-weight-bold text-uppercase">Categorias</li>
                    <li >Mello</li>
                </ul>
            </nav>
            
            </div>
            </footer>
</body>
</html>
