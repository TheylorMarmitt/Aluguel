<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt" prefix = "fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><fmt:message key="lista"/></title>
<link href="<c:url value="/resources/css/bootstrap.min.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/funcionarioAssets/style.css" />"
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
			<fmt:message key="tela.funcionario.lista" />
		</h1>
		<form action='<c:url value="/funcionario/filtrar"></c:url>' method="get">
			<div class="form-group">
				<label class="pull-left control-label filtro"> <fmt:message
						key="nome.busca" /></label>
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
					<th><fmt:message key="campo.nome" /></th>
					<th><fmt:message key="campo.sobrenome" /></th>
					<th><fmt:message key="campo.dataNascimento" /></th>
					<th><fmt:message key="campo.email" /></th>
					<th><fmt:message key="opcoes"/></th>
				</tr>
				<c:forEach var="f" items="${funcionarios}">
					<input type="hidden" name="cpf" value="${f.cpf}"/>
					<tr>
						<td>${f.nome}</td>
						<td>${f.sobrenome}</td>
						<td>${f.dataNascimento}</td>
						<td>${f.email}</td>
						<td><a class="btn btn-sm btn-info" href="atualizar"><i class="glyphicon glyphicon-pencil"></i></a>
							<a class="btn btn-sm btn-danger"><i class="glyphicon glyphicon-trash"></i></a>
						</td>
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
			$("#filtro").mask("999.999.999-99");
		});
	</script>
	
</body>
</html>