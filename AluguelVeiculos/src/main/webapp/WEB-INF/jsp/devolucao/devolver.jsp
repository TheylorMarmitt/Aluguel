<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="frm"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><fmt:message key="tela.devolver.titulo" /></title>
<link href="<c:url value="/resources/css/bootstrap.min.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/devolucaoAssets/style.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
<link href="<c:url value="/resources/menu/style.css" />"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
<link href="https://fonts.googleapis.com/css?family=Delius"
	rel="stylesheet">
	<link rel="icon" href="<c:url value="/resources/img/favicon.ico" />">
</head>
<body>
	<%@ include file="/WEB-INF/template/menu.jsp"%>
	<div class="container-fluid cont">
		<h1>
			<fmt:message key="tela.devolver.devolucao" />
		</h1>
	</div>
	<frm:form modelAtributte="devolucao" class="well form-horizontal"
		action="enviar" method="post" enctype="multipart/form-data">
		<fieldset>
			<spring:hasBindErrors name="devolucao">
				<c:forEach var="error" items="${errors.allErrors}">
					<div class="alert alert-danger col-xs-12">
						<spring:message message="${error}" />
					</div>
				</c:forEach>
			</spring:hasBindErrors>
			<div class="form-group">
				<label class="col-md-3 control-label"><fmt:message
						key="devolver.placaVeiculo" /></label>
				<div class="col-md-9 inputGroupContainer">
					<div class="input-group">
						<span class="input-group-addon"><i class="fa fa-car"></i></span><input
							id="placa" name="placa" placeholder="AAA-1234"
							class="form-control" required="required" value="" type="text">
					</div>
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-3 control-label"><fmt:message
						key="devolver.km" /></label>
				<div class="col-md-9 inputGroupContainer">
					<div class="input-group">
						<span class="input-group-addon"><i
							class="glyphicon glyphicon-dashboard"></i></span><input
							id="kilometroChegada" name="kilometroChegada" placeholder="Km"
							class="form-control" required="required" value="" type="text">
					</div>
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-3 control-label"><fmt:message
						key="devolver.dataChegada" /></label>
				<div class="col-md-9 inputGroupContainer">
					<div class="input-group">
						<span class="input-group-addon"><i
							class="glyphicon glyphicon-calendar"></i></span><input
							id="dataNascimento" name="dataChegada" placeholder="Data"
							class="form-control" required="required" value="" type="date">
					</div>
				</div>
			</div>
			<button class="btn btn-primary col-md-1 col-md-offset-11"
				type="submit">
				<fmt:message key="devolver" />
			</button>
		</fieldset>
	</frm:form>
	<script src="<c:url value="/resources/js/jquery.min.js" />"></script>
	<script src="<c:url value="/resources/js/jquery.mask.js" />"></script>

	<script>
		jQuery(function($) {
			$("#placa").mask("AAA-9999");
		});
	</script>
</body>
</html>