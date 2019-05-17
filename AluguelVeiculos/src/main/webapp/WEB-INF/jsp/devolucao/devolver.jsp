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
<link href="<c:url value="/resources/devolucaoAssets/style.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
<link href="<c:url value="/resources/menu/style.css" />"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Delius"
	rel="stylesheet">
</head>
<body>
	<%@ include file="/WEB-INF/template/menu.jsp" %>
	<div class= "container-fluid cont">
		<h1>Devolver</h1>
	</div>
	<form class="well form-horizontal"
		action='<c:url value="/devolucao/enviar"></c:url>' method="post">
		<fieldset>
			<div class="form-group">
				<label class="col-md-3 control-label">Placa do Veículo</label>
				<div class="col-md-9 inputGroupContainer">
					<div class="input-group">
						<span class="input-group-addon"><i
							class="glyphicon glyphicon-user"></i></span><input id="placa" name="placa"
							placeholder="AAA-1234" class="form-control" required="required"
							value = "" type="text">
					</div>
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-3 control-label">Km de chegada</label>
				<div class="col-md-9 inputGroupContainer">
					<div class="input-group">
						<span class="input-group-addon"><i
							class="glyphicon glyphicon-user"></i></span><input id="quilometroChegada"
							name="quilometroChegada" placeholder="Km" class="form-control"
							required="required" value=""
							type="text">
					</div>
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-3 control-label">Data de devolução</label>
				<div class="col-md-9 inputGroupContainer">
					<div class="input-group">
						<span class="input-group-addon"><i
							class="glyphicon glyphicon-calendar"></i></span><input
							id="dataNascimento" name="dataChegada" placeholder="Data"
							class="form-control" required="required"
							value="" type="date">
					</div>
				</div>
			</div>
			<button class="btn btn-primary col-md-1 col-md-offset-11" type="submit">Devolver</button>
		</fieldset>
	</form>
</body>
</html>