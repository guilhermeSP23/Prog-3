<%-- 
    Document   : erros
    Created on : 1 de jul. de 2022, 11:16:25
    Author     : SAMSUNG
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Falha no Processamento</h1>
        <hr>
        <ul>
            <li><%= request.getAttribute("msg")%></li>
        </ul>
        <button onclick="javascript:history.back();">Voltar</button>
    </body>
</html>
