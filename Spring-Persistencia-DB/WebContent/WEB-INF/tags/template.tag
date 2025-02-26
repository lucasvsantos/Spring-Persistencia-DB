<%@ tag language="java" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ attribute name="titulo" required="true" %>
<%@ attribute name="scripts" fragment="true" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Spring MVC | ${titulo}</title>
	
<link rel="stylesheet" type="text/css" 
	href="<c:url value="/resources/css/bootstrap.min.css"/>">	

</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">show</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Escolha o que fazer
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="<c:url value="/bebida/cadastrar" />">Cadastrar</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="<c:url value="/bebida/listar" />">Listar</a>
        </div>
      </li>
    </ul>
    <c:url value="/bebida/pesquisar" var="pesquisar"/>
    <form class="form-inline my-2 my-lg-0" action="${pesquisar }" method="post">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search" id="nomePesquisa" name="nome">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit" name="pesquisa">Search</button>
    </form>
  </div>
</nav>

<div class="container">
	<jsp:doBody/>	
</div>

<footer class="text-center">
	Todos os direitos reservados &copy; - 2018
</footer>

<script src="<c:url value="/resources/js/jquery-3.3.1.min.js"/>"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>

<jsp:invoke fragment="scripts"/>

</body>
</html>










