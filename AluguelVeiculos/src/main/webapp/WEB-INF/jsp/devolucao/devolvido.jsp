<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Devolver</title>
<link href="<c:url value="/resources/css/bootstrap.min.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/devolucaoAssets/style.css" />"
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
		<h1>Devolvido</h1>
	</div>
	<div class= "container-fluid">
		<h3>Carro devolvido: </h3><h3><c:out value="${devolucao.aluguel.carro.placa}"/></h3>
		<h3>Cliente: </h3><h3><c:out value="${devolucao.aluguel.cliente.nome}"/></h3>
		<h3>Funcionario</h3><h3><c:out value="${devolucao.aluguel.funcionario.nome}"/></h3>
		<h3>Km Chegada</h3><h3><c:out value="${devolucao.quilometroChegada}"/></h3>
		<h3>Km Percorridos</h3><h3><c:out value="${devolucao.calculaQuilometros()}"/></h3>
		<h3>Valor Total: </h3><h3><c:out value="${devolucao.valorTotal}"/></h3>
	</div>
</body>
</html>