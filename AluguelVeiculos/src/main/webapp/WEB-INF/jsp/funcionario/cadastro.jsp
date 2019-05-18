<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><fmt:message key="tela.cadastro.funcionario"/></title>
<link href="<c:url value="/resources/css/bootstrap.min.css" />"
	rel="stylesheet">
	<link href="<c:url value="/resources/clienteAssets/style.css" />" rel="stylesheet">
	<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
	<link href="<c:url value="/resources/menu/style.css" />"
	rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Delius"
	rel="stylesheet">
</head>
	<body>
	
	<%@ include file="/WEB-INF/template/menu.jsp" %>
	
	<h1>Cadastro Funcionario</h1>
	
	<%@ include file="/WEB-INF/template/formGeral.jsp" %>
</body>
</html>