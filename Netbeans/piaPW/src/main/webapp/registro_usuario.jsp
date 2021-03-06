<%-- 
    Document   : registro_usuario
    Created on : 3/06/2021, 07:15:56 PM
    Author     : jctor
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registro_de_Usuario</title>
    <link rel="stylesheet" href="assets/css/estilo_registro.css">
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
<h1>Formulario de Registro</h1>
<form action="SignInController" method="POST" class="form-register" enctype="multipart/form-data">
<h2 class="form_titulo"> CREAR CUENTA</h2>
<div class="contenedor-inputs">
<input type="text" name="Nombre" placeholder="Nombre(s)" class="input-48" required>
<input type="text" name="ApellidoP" placeholder="Apellido Paterno" class="input-48" required>
<input type="text" name="ApellidoM" placeholder="Apellido Materno" class="input-48" required>
<p class="input-48">Fecha de Nacimiento</p>
<input type="date" id="fecha_naciemiento" name="fechadenaciemiento" class="input-48" required>

<p class="input-foto-text">Foto de Perfil</p>
<img alt= "FotoUsuario" id="FotografiadePerfil" class="fotoperfil"> 

<input type="file" name="Fotografia" placeholder="Foto de Perfil" id="FotoUsuario" class="input-foto" required>
<input type="email" name="Correo" placeholder="Correo" class="input-100" required>
<input type="text" name="Usuario" placeholder="Usuario" class="input-48" required>
<input type="password" name="Contrasena" placeholder="Contrase??a" class="input-cont" required>
<input type="password" name="Conf-Contrase??a" placeholder="Confirmar Contrase??a" class="input-cont" required>
<input type="submit" value="Crear cuenta" class="Boton_enviar" />
<p class="form_link">??Ya tienes una cuenta?<a href="login.jsp"> Ingresa aqu??</a></p>

</div>
</form>



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
          <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
           <!-- <script src="js/Registrousuario.js"></script>-->
 
                      <script> 
        $('document').ready(function(){ 
        function readImage(input){
        if(input.files && input.files[0]){
        var reader = new FileReader();
        reader.onload = function(e) {
        $('#FotografiadePerfil').attr('src', e.target.result);};
        reader.readAsDataURL(input.files[0]);
    }
}
$('#FotoUsuario').change(function(){
    readImage(this);
});
});
        </script>    
  
    
</body>
</html>