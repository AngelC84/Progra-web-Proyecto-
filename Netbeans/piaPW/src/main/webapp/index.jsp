<%-- 
    Document   : index
    Created on : 16/05/2021, 02:02:52 PM
    Author     : jctor
--%>

<%@page import="com.mycompany.piapw.dao.CategoryDAO"%>
<%@page import="java.util.List"%>
<%@page import="com.mycompany.piapw.models.Category"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    
     session = request.getSession(false);
     
 List<Category> categories = CategoryDAO.getCategories();
//List<Category> categories = (List)request.getAttribute("Categories");

out.print(categories);

%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PIA WEB</title>
    <link rel="stylesheet" href="assets/css/estilo_principal.css">
    <link rel="shortcut icon" href="assets//imagenes//LOGO_CineForo.png"  type="image/x-icon">
    <link href="https://fonts.googleapis.com/css2?family=Work+Sans:wght@405&display=swap" rel="stylesheet">
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
     <% if(session == null){ %>   
 
         <li><a href="login.jsp"> Login </a></li>
    <li><a href="registro_usuario.jsp"> Sign up </a></li>
          
         <% }else { %>     
           
     <li>
     <form action ="LogOffController" method="POST">
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
        <i class="fas fa-search"></i>
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


    <main class="Pregunta">

        <p class="titulo_preg">Hacer Pregunta</p>
    
        <div class="container_pregunta"> 
            <select name="Categorias" id="categ" placeholder="Categoria" class="combopregunta">
                <% for(Category category : categories){ %>
                
                
                <option value=" <%= category.getId() %>"><%= category.getNombre()  %></option>
                
            <% 
                }
            %>
            <input type = "text" name = "Titulo" id = title placeholder="Pregunta" class="src">
            <input type = "text" name = "Descripcion" id = description placeholder="Descripcion" class="hacer_preg">
            <p class="Cargar_text">Cargar imagen</p>
            <img alt= "FotoResp" id="FotografiadeRespuesta" class="fotoPreg"> 
            <input id="FotoResp" type="file" name="Fotografia" placeholder="Foto para Pregunta" class="input-foto" required>
            <input type="button" value="Publicar" class="botRes">
        </div>
    </main>

<main class="main">
    
    <div class="container_main"> 
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
</div>
<!-- Segunda pregunta-->
<div class="pregunta2"> 
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

</div>

<!-- Tercera pregunta-->
<div class="pregunta3"> 
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
    
    </div>

<!-- Cuarta pregunta-->
<div class="pregunta4"> 
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
    
    </div>

    <!-- Quinta pregunta-->
<div class="pregunta5"> 
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
    
    </div>

    <!-- Sexta pregunta-->
<div class="pregunta6"> 
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
    
    </div>

    <!-- Septima pregunta-->
<div class="pregunta7"> 
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
    
    </div>
    <!-- Octava pregunta-->
<div class="pregunta8"> 
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
    
    </div>

    <!-- Novena pregunta-->
<div class="pregunta9"> 
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
    
    </div>

    <!-- Decima pregunta-->
<div class="pregunta10"> 
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
    
    </div>
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