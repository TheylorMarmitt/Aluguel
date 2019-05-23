<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><fmt:message key="tela.carro.titulo" /></title>
<link href="<c:url value="/resources/carroAssets/style.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/bootstrap.min.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
<link href="<c:url value="/resources/menu/style.css" />"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Delius"
	rel="stylesheet">
</head>
<body>
	<%@ include file="/WEB-INF/template/menu.jsp"%>
	<div class="container-fluid cont">
		<h1><fmt:message key="tela.carro.disponiveis" /></h1>
		<form action='<c:url value="/carro/filtrarDisponivel"></c:url>' method="get">
			<div class="form-group">
				<label class="pull-left control-label  filtro"> <fmt:message key="tela.carro.busca" /></label>
				<div class="inputGroupContainer">
					<div class="input-group">
						<input type="text" name="filtro"> <input
							class="btn btn-default btn-filtro" type="submit" value="filtrar" />
					</div>
				</div>
			</div>
		</form>
	</div>
	<div class= "container-fluid">
			<c:forEach var="c" items="${carros}">
				<div class="col-xs-6 col-sm-4 col-md-3 col-lg-2 zoom"> 
					<div class="conteudo">
						<img src="data:image/jpg;base64,${c.imagem}" class="img-responsive rounded-top" >
						<p>Placa: <span class="azul">${c.placa}</span> </p>	
						<p>Marca: <span class="azul">${c.marca}</span>  </p>
						<p>Modelo:<span class="azul">${c.modelo}</span>  </p>
						<p>Valor: <span class="azul">${c.valor}</span> </p>	
						<p>Cor: <span class="azul">${c.cor}</span> </p>		
					</div>
				</div>
			</c:forEach>
	</div>


<script src="<c:url value="/resources/js/custom.js"/>"></script>
<script src="<c:url value="/resources/js/jquery.min.js"/>"></script>

</body>
</html>