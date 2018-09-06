<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<tags:template titulo="Edição de bebida">

	<h1>Editar Bebida</h1>
	<c:url value="/bebida/editar" var="action" />
	<form:form action="${action }" method="post" commandName="bebida">
		<div class="form-group">
			<form:label path="nome">Nome</form:label>
			<form:input path="nome" cssClass="form-control" />
			
			<form:checkbox path="alcoolico" />
			<form:label path="alcoolico">Alcoolico</form:label>
			<form:label path="validade">Validade</form:label>
			<form:input path="validade" cssClass="form-control" />
			<form:hidden path="codigo"/>
			<input type="submit" value="Atualizar" /> 
		</div>
	</form:form>


</tags:template>