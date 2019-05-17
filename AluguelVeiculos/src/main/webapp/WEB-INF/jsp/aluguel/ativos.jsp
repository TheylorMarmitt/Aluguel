<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AC Aluguel</title>
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
	<div class="container-fluid busca">
		<h1>Alugueis Ativos</h1>
		<form action='<c:url value="/aluguel/filtrar"></c:url>' method="get">
			<div class="form-group">
				<label class="pull-left control-label  filtro"> Buscar por
					placa: </label>
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
				<th>Codigo</th>
				<th>Placa</th>
				<th>Data do Aluguel</th>
				<th>Cliente</th>
			</tr>
			<c:forEach var="a" items="${alugueis}">
				<tr>
					<td>${a.codigo}</td>
					<td>${a.carro.placa}</td>
					<td>${a.dataAluguel}</td>
					<td>${a.cliente.nome}</td>
				</tr>
			</c:forEach>
		</table>
	</div>


<script src="<c:url value="/resources/js/custom.js"/>"></script>
<script src="<c:url value="/resources/js/jquery.min.js"/>"></script>

</body>
</html>