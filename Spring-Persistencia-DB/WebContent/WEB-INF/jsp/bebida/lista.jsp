<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE>
<html>
<tags:template titulo="Lista de bebidas!">

	<h1>Lista de bebidas!</h1>
	
	<c:if test="${not empty msg }">
		<div class="alert alert-success">
			${msg }
		</div>
	</c:if>

	<table style="width: 100%" class="table">
		<tr class="danger">
			<th>Codigo</th>
			<th>Nome</th>
			<th>Alcoolico</th>
			<th>Validade</th>
			<th></th>
		</tr>
		<c:forEach var="i" items="${bebidas }" >
			<tr class="danger">
				<td>${i.codigo }</td>
				<td>${i.nome }</td>
				<td>${i.alcoolico?"+18":"Livre" }</td>

				<td> <fmt:formatDate value="${i.validade.time }" pattern="dd/MM/yyyy"/> </td>
				<td> <a class="btn btn-outline-primary btn-sm" href="<c:url value="/bebida/editar/${i.codigo }"/>">Editar</a>
					 <!-- Button trigger modal -->
					 <button onclick="codigoBebida.value= ${i.codigo}" type="button" class="btn btn-outline-danger btn-sm" data-toggle="modal" data-target="#exampleModal">
					   Excluir
					 </button>
				</td>
			</tr>
		</c:forEach>
	</table>
	

	<!-- Modal -->
	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
	  <div class="modal-dialog" role="document">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 class="modal-title" id="exampleModalLabel">SUA ÚLTIMA CHANCE</h5>
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	          <span aria-hidden="true">&times;</span>
	        </button>
	      </div>
	      <div class="modal-body">
	        Cara, é o seguinte, voce tem que pensar pelo lado de que se voce remover nao vai dar pra voltar <b>NUNCA</b> mais
	      </div>
	      <div class="modal-footer">
	      <c:url value="/bebida/remover" var="remove"/>
		      <form action="${remove }" method="post">
		      <input type="hidden" name="codigo" id="codigoBebida" value="">
		        <button type="button" class="btn btn-secondary" data-dismiss="modal">sair</button>
		        <button type="submit" class="btn btn-primary">apanga msm</button>
		       </form>
	      </div>
	    </div>
	  </div>
	</div>
</tags:template>
</html>