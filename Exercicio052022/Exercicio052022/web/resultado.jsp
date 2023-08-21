<%-- 
    Document   : resultado
    Created on : 1 de jul. de 2022, 11:08:40
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
	<h1>Pedidos de Camisas</h1>
	<hr>
	<p>Seu pedido pedido foi relizado com sucesso!!!</p>
	
        <p>O valor final do pedido é: R$ <%= request.getAttribute("valorTotal")%></p><br>
        
        <a href="index.html">Voltar para Formulário</a>
    </body>
</html>
