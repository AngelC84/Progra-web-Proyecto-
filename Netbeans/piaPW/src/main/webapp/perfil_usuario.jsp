<%-- 
    Document   : perfil_usuario
    Created on : 3/06/2021, 07:11:44 PM
    Author     : jctor
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Perfil_Usuario</title>
    <link rel="stylesheet" href="assets/css/estilo_perfilUser.css">
    <link rel="shortcut icon" href="assets//imagenes//LOGO_CineForo.png"  type="image/x-icon">
    <script src="https://kit.fontawesome.com/89688bb0b5.js" crossorigin="anonymous"></script>
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
        <% if(session==null){ %>   
   <li><a href="login.jsp"> Login </a></li>
    <li><a href="registro_usuario.jsp"> Sign up </a></li>
         <% }else{ %>
        <li>
         <form action ="" method="POST">
            
         <input type="submit" value="Cerrar Sesion" class="cerrar_sesion" />
                
        </form>
        </li>
          <li><a href="perfil_usuario.jsp"> Perfil </a>  </li>
         <% } %>
        </ul>
        </nav>
        </div>
        </header>
    
        <h1 class="Buscador">
            <input type="text" name="search" placeholder= "Busca tu pelicula" class="src" autocomplete="off"> 
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

<section class="perfil-usuario">
    <div class="avatar-perfil" >
        <img src="assets//imagenes//cookie2.jpg" width="250px" height="260" alt="img">
    </div>
    <div class="Datos-perfil">
        <h4 class="Titulo-usuario">COOKIE</h4>
        <p class="biografia"></p>
        <ul class="lista-perfil">
            <li>35 Preguntas</li>
            <li>7 Favoritos</li>
            <li>7 Utiles</li>
        </ul>
    </div>
    <div class="opciones-perfil">
        <button type="">Cambiar foto</button>
        <button type=""><i class="fas fa-wrench"></i></button>
    </div>
    <div class="Menu-perfil">
<ul>
    <li><a href="#" title="Preguntas">Preguntas</a></li>
    <li><a href="#" title="Utiles"> Utiles</a></li>
    <li><a href="#" title="NoUtiles"> No Utiles</a></li>
    <li><a href="#" title="Favoritos"> Favoritos</a></li>
</ul>
</div>


</section>
<p class="titulo-secc">PREGUNTAS</p>

<div class="Preguntas"> 
    <div class="imagen"><img src="assets//imagenes//cookie2.jpg" width="150px" height="150"/></div>
            <div class="text"> <p>Cookie</p>
            <p>TITULO </p>
            <p>
        Hoy empiezo a buscarte
    Estar?? atento, no perder?? ning??n detalle
    Ya toda la gente que hable de mas
    Los guardare en el caj??n sin llave
    Empieza el tiempo
    No hay excusas, no hay ning??n pretexto
    
    Voy camino a encontrarte
    Espero no llegue tarde
    Seguro estar??s vestida de ??ngel
    C??mo sera nuestro encuentro?
    Te gustare de nuevo?
    O me creer??s cuando te cante
    Que te quiero
    
    Se no todo esta perdido
    Recobrare el beso largamente obtenido
    Ac??rcate, m??date a mi coraz??n
    Conf??a en el amor, qu??tame este frio
    Empieza el tiempo,
    No hay excusas, no hay ning??n pretexto
    
    Voy camino a encontrarte
    Espero no llegue tarde
    Seguro estaras vestida de angel
    Como sera nuestro encuentro?
    Te gustare de nuevo?
    O me creer??s cuando te cante
    
    Voy camino a encontrarte
    Espero no llegue tarde
    Seguro estaras vestida de angel
    Como sera nuestro encuentro?
    Te gustare de nuevo?
    O me creer??s cuando te cante
    Que te quiero, que te quiero,
    Que te quiero, que te quiero.
    </p>
    </div>
    <p class = "catego">CATEGORIA</p>
</main>
    

<div class = "paginacion">
    <div class = "pagina">
    <i class="fa fa-chevron-left" aria-hidden="true"></i>
    </div>
    <div class = "pagina">1</div>
    <div class = "pagina">2</div>
    <div class = "pagina">3</div>
    <div class = "pagina">4</div>
    <div class = "pagina">5</div>
    <div class = "pagina">6</div>
    <div class = "pagina">7</div>
    <div class = "pagina">8</div>
    <div class = "pagina">9</div>
    <div class = "pagina">10</div>
    <div class = "pagina">
        <i class="fa fa-chevron-right" aria-hidden="true"></i>
    </div>
</div>

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

