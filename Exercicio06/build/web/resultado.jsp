<%-- 
    Document   : resultado
    Created on : 1 de jul. de 2022, 13:58:40
    Author     : Guilherme Selau Pereira

--%>

<%@page import="br.edu.ifrs.Dados.Cliente"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="estilo.css" rel="stylesheet" type="text/css"/>
        
    </head>
     <body>
        <%
            Cliente cli = (Cliente)request.getAttribute("cliente");
           
        %>
        <div id="quadro1">
            <div id="quadro1_1">
            <img src="Imagens/tabajara.jpg" alt="" height="88" width="190"/>
            
             </div>
	<div id="quadro1_2">
            <h1>Fatura Online</h1>
	
       
            </div>
            </div>
        <div id="quadro2">
            <div id="quadro2_1">
        <p> <b>Dados do Cliente</b></p>
       <ul>
           
	 <li>CPF: <%= cli.getCpf()%></li>
         <li>Nome: <%= cli.getNome()%></li>
         <li>Telefone: <%= cli.getTelefone()%></li>
         <li>Endereço: <%= cli.getEndereco()%></li><br>
        </ul>
        
        
         <table border="1" CELLSPACING=0 align="center">
            <caption><b>Dados do Serviço</b></caption>
            <tr>
                <b>
                <th>Descricao</th>
                <th>Data da Realização</th>
                <th>Tipo de serviço</th>
                <th>Tempo</th>
                <th>Valor Unitário</th>
                </b>
            </tr>
        <tr>
                <th><%= cli.getFat().getSrv().getDescricao() %></th>
                <th><%= cli.getFat().getSrv().getDataServico() %></th>
                <th><%= cli.getFat().getSrv().getDescricaoTipo() %></th>
                <th><%= cli.getFat().getSrv().gettRealizacao() %></th>
                <th>R$ <%= cli.getFat().getSrv().getvServico() %></th>
        </tr>
         </TABLE>
            

        
        <p id="p1">Valor do ICMS: R$<%= cli.getFat().getvIcms() %> ICMS: % <%= cli.getFat().getSrv().getIndiceServico() %> Total: R$ <%= (cli.getFat().getvTotal()+cli.getFat().getvIcms()) %> Vencimento: <%= cli.getFat().getDataVencimento() %></p><br>
       
       
	
        
        </DIV> 
        </DIV> 
        

       
    </body>
</html>
