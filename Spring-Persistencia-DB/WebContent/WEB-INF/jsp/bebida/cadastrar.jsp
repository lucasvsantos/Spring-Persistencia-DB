<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>

<tags:template titulo="Cadastro de bebida">

	<h1>Cadastro de bebida</h1>
	
	<c:if test="${not empty msg }">
		<div class="alert alert-danger">
			${msg }
		</div>	
	</c:if>
	<form action="cadastrar" method="post" >
		<div>
			<label for="nome">Nome</label>
			<input type="text" name="nome" id="nome" class="form-control"/>
		</div>
		<div>
			<label for="alcoolico">Alcoolico?</label>
			<input type="checkbox" name="alcoolico" id="alcoolico" />
		</div>
		<div>
			<label for="validade">Validade</label>
			<input type="text" name="validade" id="validade" class="form-control" /> 
		</div>
		<div>
			<input type="submit" value="Enviar">
		</div>
	</form>
</tags:template>

</html>