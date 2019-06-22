<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
	<title><fmt:message key="configuracoes"/></title>
	<%@ include file="/WEB-INF/template/resources.jsp"%>
	<link href="<c:url value="/resources/clienteAssets/style.css" />" rel="stylesheet">
</head>
<body>
<%@ include file="/WEB-INF/template/menu.jsp"%>

<div class="container-fluid cont">
	<h1>
		<fmt:message key="filial.lista"/>
	</h1>
		<div class="table table-responsive">
				<table class="table table-striped table-hover">
					<tr>
						<th><fmt:message key="campo.nome" /></th>
						<th><fmt:message key="campo.endereco" /></th>
						<th><fmt:message key="opcoes" /></th>
					</tr>
					<c:forEach var="f" items="${filiais}">
						<input type="hidden" name="cpf" value="${f.codigo}"/>
						<tr>
							<td>${f.nome}</td>
							<td>${f.endereco}</td>
							<td><a class="btn btn-sm btn-info" href="<c:url value="/filial/atualizar/${f.codigo}"/>"><i class="glyphicon glyphicon-pencil"></i></a>
								<a class="btn btn-sm btn-danger"><i class="glyphicon glyphicon-trash"></i></a>
							</td>
						</tr>
					</c:forEach>
				</table>
			</div>
	</div>	
</body>
</html>		