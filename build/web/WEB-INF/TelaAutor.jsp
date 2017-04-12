<%-- 
    Document   : TelaAutor
    Created on : 08/04/2017, 18:28:50
    Author     : Amanda
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="gerenciador.dao.PostDAO"%>
<%@page import="gerenciador.beans.Post"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="StyleSheet" type="text/css" href="Estilo/estilo.css">
        <title>Blog - ${usuarioLogado.nome}</title>
    </head>
    <body>
            <ul class="u">
                <li class="home"><a href="Controller?tarefa=Home">Home</a></li> 
                <li class="home"><a href="Controller?tarefa=Conta">Editar Conta</a></li>                
                <li class="home"><a href="Controller?tarefa=MPost">Meus Posts</a></li>
                <li class="home"><a href="Controller?tarefa=Logout">Logout</a></li>              
            </ul>
            <img class="im" src="Estilo/blog.png">
            <p class="bv">Posts de ${usuarioLogado.nome}</p> 
            <br>

           <%
                ArrayList<Post> posts = (ArrayList<Post>)request.getAttribute("posts");
                for(Post post : posts){
                    out.println("<div class='posts'>");
                    out.println("<p class='ti'><br>" + post.getTitulo() + "</br></p>");
                    out.println("<p class='tx'>" + post.getTexto() + "</p>");
                    out.println("<p class='a'> Postado por " + post.getAutor() + " em " + post.getData() + ". </p>");
                    out.println("</div>");
                }
            %> 

            <a href="Controller?tarefa=NovoPost"><img class="esquerdo-inferior"  src="Estilo/np.png"></a> 
    </body>
</html>