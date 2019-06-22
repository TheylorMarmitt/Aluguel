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

<title><fmt:message key="tela.cliente.titulo" /></title>
<link href="<c:url value="/resources/css/bootstrap.min.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/clienteAssets/style.css" />"
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
			<fmt:message key="tela.cliente.atualizar" />
		</h1>
		<form action='<c:url value="/cliente/atualizar"></c:url>' method="get">
			<div class="form-group">
				<label class="pull-left control-label  cpf"><fmt:message
						key="cpf.busca" /></label>
				<div class="inputGroupContainer">
					<div class="input-group">
						<input type="text" name="filtroCPF" id="filtro"> <input
							class="btn btn-default btn-filtro" type="submit" value="filtrar" />
					</div>
				</div>
			</div>
		</form>
	</div>
	<frm:form modelAtributte="cliente" class="well form-horizontal"
		action="editar" method="post" enctype="multipart/form-data">
		<fieldset>
			<spring:hasBindErrors name="cliente">
				<c:forEach var="error" items="${errors.allErrors}">
					<div class="alert alert-danger col-xs-12">
						<spring:message message="${error}" />
					</div>
				</c:forEach>
			</spring:hasBindErrors>


			<div class="form-group">
				<label class="col-md-3 control-label"><fmt:message
						key="campo.nome" /></label>
				<div class="col-md-9 inputGroupContainer">
					<div class="input-group">
						<span class="input-group-addon"><i
							class="glyphicon glyphicon-user"></i></span><input id="nome" name="nome"
							placeholder="Joe" class="form-control" required="required"
							value="<c:out value="${cliente.nome}"/>" type="text">
					</div>
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-3 control-label"><fmt:message
						key="campo.sobrenome" /></label>
				<div class="col-md-9 inputGroupContainer">
					<div class="input-group">
						<span class="input-group-addon"><i
							class="glyphicon glyphicon-user"></i></span><input id="sobrenome"
							name="sobrenome" placeholder="Doe" class="form-control"
							required="required" value="<c:out value="${cliente.sobrenome}"/>"
							type="text">
					</div>
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-3 control-label"><fmt:message
						key="campo.dataNascimento" /></label>
				<div class="col-md-9 inputGroupContainer">
					<div class="input-group">
						<span class="input-group-addon"><i
							class="glyphicon glyphicon-calendar"></i></span><input
							id="dataNascimento" name="dataNascimento" placeholder="Data"
							class="form-control" required="required"
							value="<c:out value="${cliente.converteData()}"/>" type="text">
					</div>
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-3 control-label"><fmt:message
						key="campo.telefone" /></label>
				<div class="col-md-9 inputGroupContainer">
					<div class="input-group">
						<span class="input-group-addon"><i
							class="glyphicon glyphicon-earphone"></i></span><input id="telefone"
							name="telefone" placeholder="49 9 9999-9999" class="form-control"
							required="required" value="<c:out value="${cliente.telefone}"/>"
							type="text">
					</div>
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-3 control-label"><fmt:message
						key="campo.cpf" /></label>
				<div class="col-md-9 inputGroupContainer">
					<div class="input-group">
						<span class="input-group-addon"><i
							class="glyphicon glyphicon-user"></i></span><input id="cpf" name="cpf"
							placeholder="112.234.567-89" class="form-control"
							required="required" value="<c:out value="${cliente.cpf}"/>"
							type="text" disabled>
					</div>
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-3 control-label"><fmt:message
						key="campo.email" /></label>
				<div class="col-md-9 inputGroupContainer">
					<div class="input-group">
						<span class="input-group-addon"><i
							class="glyphicon glyphicon-envelope"></i></span><input id="email"
							name="email" placeholder="joe@doe.com" class="form-control"
							required="required" value="<c:out value="${cliente.email}"/>"
							type="email">
					</div>
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-3 control-label"><fmt:message
						key="campo.cnh" /></label>
				<div class="col-md-9 inputGroupContainer">
					<div class="input-group">
						<span class="input-group-addon"><i
							class="glyphicon glyphicon-user"></i></span><input id="cnh" name="cnh"
							placeholder="62786985474" class="form-control"
							required="required" value="<c:out value="${cliente.cnh}"/>"
							type="text">
					</div>
				</div>
			</div>
			<input type="submit"
				class="btn btn-primary col-md-1 col-md-offset-11" name="Enviar" />
		</fieldset>
	</frm:form>

	<script src="<c:url value="/resources/js/jquery.min.js" />"></script>
	<script src="<c:url value="/resources/js/jquery.mask.js" />"></script>

	<script>
		jQuery(function($) {
			$("#filtro").mask("999.999.999-99");
			$("#cpf").mask("999.999.999-99");
			$("#telefone").mask("(99)99999-9999");
			$("#cnh").mask("99999999999");
		});
	</script>
</body>
</html>