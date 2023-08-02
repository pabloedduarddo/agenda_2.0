<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ page import="model.JavaBeans"%>
    <%@ page import="java.util.ArrayList"%>
    
    <% 
    ArrayList<JavaBeans> lista = (ArrayList<JavaBeans>) request.getAttribute("contatos");
    
    /*for (int i =0; i <lista.size(); i++){
    	out.println(lista.get(i).getIdcon());
    	out.println(lista.get(i).getNome());
    	out.println(lista.get(i).getFone());
    	out.println(lista.get(i).getEmail());
    }*/
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Agenda de contatos</title>
<link rel="icon" href="imagens/agenda_1.png">
<link rel="stylesheet" href="style.css">

</head>
<body>
	<section class="agenda" >
	<h1> Agenda de contatos </h1>
	<a href="novo.html" class="botao"> Novo Contato </a>
	
	<a href="report" class="botao1"> Relatório </a>
	
	<table id="tabela">
		<thead>
			<tr>
				<th> Id </th>
				<th> Nome </th>
				<th> Fone </th>
				<th> E-mail </th>
				<th> Opções </th>
			</tr>
		</thead>
		
		<tbody>
		
		<% for (int i =0; i <lista.size(); i++){ %>
			<tr>
				<td> <%=lista.get(i).getIdcon() %> </td>
				<td> <%=lista.get(i).getNome() %> </td>
				<td> <%=lista.get(i).getFone() %> </td>
				<td> <%=lista.get(i).getEmail() %> </td>
				
				<td>
				
					<a href="select?idcon=<%=lista.get(i).getIdcon()%>" class="botao"> Editar </a>
					
					<a href="javascript:confirmar(<%=lista.get(i).getIdcon()%>)" class="botao1"> Excluir </a> 
				</td>
			</tr>
			<% } %>	
		</tbody>		
	</table>
	
	</section>

	<script type="text/javascript" src="scripts/confirmador.js"></script>
</body>
</html>