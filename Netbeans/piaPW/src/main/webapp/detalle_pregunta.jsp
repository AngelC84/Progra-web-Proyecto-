<%-- 
    Document   : detalle_pregunta
    Created on : 2/06/2021, 09:18:28 PM
    Author     : jctor
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Detalle_Pregunta</title>
    <link rel="stylesheet" href="assets/css/estilo_detallepregunta.css">
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

            <div class="container_main"> 
               
                <div class="text"> 
                    <div class="info_preg"> 
                    <p>Favoritos: 10</p>
                    <p>Utiles: 9</p>
                    </div>
                <p class="pregunta">¿Como se llama la pelicula de Shrek?</p>
                <p>
            Hoy empiezo a buscarte
        Estaré atento, no perderé ningún detalle
        Ya toda la gente que hable de mas
        Los guardare en el cajón sin llave
        Empieza el tiempo
        No hay excusas, no hay ningún pretexto
        
        Voy camino a encontrarte
        Espero no llegue tarde
        Seguro estarás vestida de ángel
        Cómo sera nuestro encuentro?
        Te gustare de nuevo?
        O me creerás cuando te cante
        Que te quiero
        
        Se no todo esta perdido
        Recobrare el beso largamente obtenido
        Acércate, múdate a mi corazón
        Confía en el amor, quítame este frio
        Empieza el tiempo,
        No hay excusas, no hay ningún pretexto
        
        Voy camino a encontrarte
        Espero no llegue tarde
        Seguro estaras vestida de angel
        Como sera nuestro encuentro?
        Te gustare de nuevo?
        O me creerás cuando te cante
        
        Voy camino a encontrarte
        Espero no llegue tarde
        Seguro estaras vestida de angel
        Como sera nuestro encuentro?
        Te gustare de nuevo?
        O me creerás cuando te cante
        Que te quiero, que te quiero,
        Que te quiero, que te quiero.
        </p>
        <div class="imagenpeli"><img src="assets//imagenes//shrek_pelicula.png" width="150px" height="150"/></div>
        <p class = "Estado_editado">EDITADA</p>

        </div>
        <p class = "catego">CATEGORIA</p>

        <p class="nombre">Cookie</p>
        <div class="imagen"><img src="assets//imagenes//cookie2.jpg" width="150px" height="150"/></div>

        </div>
        </main> 

        <main class="main-respuestas">
            <p class="titulo_resp">Respuestas</p>

            <div class="container_main_resp"> 
                <div class="info_pregunta" > 
                    <p>Fecha y Hora</p>
                    <p>09.04.2021</p>
                    <i class="fas fa-check-circle"></i>
                    </div>
                    <div class="Contenido_respuesta">
                    <div class="contenido_del_contenido">
                    <p class="Respuesta">Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempora harum velit dolore sapiente veritatis, sunt esse quas quis tempore, ad molestias explicabo, nulla asperiores quia? Repellat tenetur maiores eligendi quaerat!</p>
                    <div class="imagen_respuesta"><img src="assets//imagenes//Shrek_resp.jpg" width="150px" height="150"/></div>
                    </div> 
                    <div class= "botones_utiles"> 
                    <input type="button" value="Util" class = "Utilidad">
                    <input type="button" value="No Util" class = "Utilidad">
                    </div>
                    </div>

        <div class= "Usuario_respuesta"> 
        <p class="nombre">Cookie</p>
        <div class="imagen"><img src="assets//imagenes//cookie2.jpg" width="80px" height="80"/></div>

        </div>
        </div>
        </main>

<main class="Responder">

    <p class="titulo_resp">Responder pregunta</p>

    <div class="container_responder"> 
        <input type = "text" name = "Respuesta" id = resp placeholder="Responder pregunta" class="respu_preg">
        <p class="Cargar_text">Cargar imagen</p>
        <img alt= "FotoResp" id="FotografiadeRespuesta" class="fotoResp"> 
        <input id="FotoResp" type="file" name="Fotografia" placeholder="Foto para Respuesta" class="input-foto" required>
        <input type="button" value="Publicar" class="botRes">
    </div>
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
            <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>

<script>
$('document').ready(function(){
    function readImage(input){
        if(input.files && input.files[0]){
            var reader = new FileReader();
            reader.onload = function(e) {
                $('#FotografiadeRespuesta').attr('src', e.target.result);
            }
            reader.readAsDataURL(input.files[0]);
        }
    }
    $('#FotoResp').change(function(){
        readImage(this);
    });
    });
</script>
</body>
</html>

