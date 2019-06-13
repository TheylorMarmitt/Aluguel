<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><fmt:message key="tela.alugueis.ativos.titulo" /></title>
<link href="<c:url value="/resources/css/bootstrap.min.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/aluguelAssets/style.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
<link href="<c:url value="/resources/menu/style.css" />"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Delius"
	rel="stylesheet">
	<link rel="icon" href="<c:url value="/resources/img/favicon.ico" />">
</head>
<body>
	<%@ include file="/WEB-INF/template/menu.jsp"%>
	<div class="container-fluid cont">
		<h1>
			<fmt:message key="tela.alugueis.ativos" />
		</h1>
		<form action='<c:url value="/aluguel/filtrar"></c:url>' method="get">
			<div class="form-group">
				<label class="pull-left control-label  filtro"> <fmt:message
						key="tela.alugueis.busca" /></label>
				<div class="inputGroupContainer">
					<div class="input-group">
						<input type="text" id="filtro" name="filtro"> <input
							class="btn btn-default btn-filtro" type="submit" value="filtrar" />
					</div>
				</div>
			</div>
		</form>
	</div>
	<div class="container-fluid">
		<div class="table table-responsive">
			<table class="table table-striped table-hover">
				<tr>
					<th><fmt:message key="tela.alugueis.codigo" /></th>
					<th><fmt:message key="tela.alugueis.placa" /></th>
					<th><fmt:message key="tabela.ativos.dataAluguel" /></th>
					<th><fmt:message key="cliente" /></th>
				</tr>
				<c:forEach var="a" items="${alugueis}">
					<tr>
						<td>${a.codigo}</td>
						<td>${a.carro.placa}</td>
						<td>${a.converteData()}</td>
						<td>${a.cliente}</td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</div>


	<script src="<c:url value="/resources/js/custom.js"/>"></script>
	<script src="<c:url value="/resources/js/jquery.min.js"/>"></script>
	<script src="<c:url value="/resources/js/jquery.mask.js" />"></script>

	<script>
		jQuery(function($) {
			$("#filtro").mask("AAA-9999");
		});
	</script>
	
	
</body>
</html>