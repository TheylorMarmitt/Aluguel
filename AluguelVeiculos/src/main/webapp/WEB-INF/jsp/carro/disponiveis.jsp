<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><fmt:message key="tela.carro.titulo" /></title>
<link href="<c:url value="/resources/css/bootstrap.min.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/aluguelAssets/style.css" />" rel="stylesheet">
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
		<table class="table table-striped">
			<tr>
				<th><fmt:message key="carro.placa" /></th>
				<th><fmt:message key="carro.marca" /></th>
				<th><fmt:message key="carro.modelo" /></th>
				<th><fmt:message key="carro.valor" /></th>
				<th><fmt:message key="carro.cor" /></th>
			</tr>
			<c:forEach var="c" items="${carros}">
				<tr>
					<td>${c.placa}</td>
					<td>${c.marca}</td>
					<td>${c.modelo}</td>
					<td>${c.valor}</td>
					<td>${c.cor}</td>
				</tr>
			</c:forEach>
		</table>
	</div>


<script src="<c:url value="/resources/js/custom.js"/>"></script>
<script src="<c:url value="/resources/js/jquery.min.js"/>"></script>

</body>
</html>