<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE>
<html>
<tags:template titulo="Lista de bebidas!">

	<h1>Lista de bebidas!</h1>

	<table style="width: 100%">
		<tr>
			<th>Codigo</th>
			<th>Nome</th>
			<th>Alcoolico</th>
			<th>Validade</th>
			<th></th>
		</tr>
		<c:forEach var="i" items="${bebidas }" >
			<tr>
				<td>${i.codigo }</td>
				<td>${i.nome }</td>
				<td>${i.alcoolico }</td>
				<td> <fmt:formatDate value="${i.validade.time }" pattern="dd/MM/yyyy"/> </td>
				<td> <a href="<c:url value="/bebida/editar/${i.codigo }"/>">Editar</a></td>
			</tr>
		</c:forEach>
	</table>


</tags:template>
</html>