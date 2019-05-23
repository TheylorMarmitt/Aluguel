<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><fmt:message key="tela.funcionario.titulo"/></title>
<link href="<c:url value="/resources/css/bootstrap.min.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/funcionarioAssets/style.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
<link href="<c:url value="/resources/menu/style.css" />"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Delius"
	rel="stylesheet">
</head>
<body>
	<%@ include file="/WEB-INF/template/menu.jsp" %>
	<div class= "container-fluid cont">
		<h1><fmt:message key="tela.funcionario.atualizar"/></h1>
		<form action='<c:url value="/funcionario/atualizar"></c:url>' method="get">
			<div class="form-group">
				<label class="pull-left control-label  cpf"><fmt:message key="cpf.busca"/></label>
				<div class="inputGroupContainer">
					<div class="input-group">
						<input type="text" name="filtroCPF">
						 <input
							class="btn btn-default btn-filtro" type="submit" value="filtrar" />
					</div>
				</div>
			</div>
		</form>
	</div>
	<form class="well form-horizontal"
		action='<c:url value="/funcionario/editar"></c:url>' method="post">
		<fieldset>
			<div class="form-group">
				<label class="col-md-3 control-label"><fmt:message key="campo.nome"/></label>
				<div class="col-md-9 inputGroupContainer">
					<div class="input-group">
						<span class="input-group-addon"><i
							class="glyphicon glyphicon-user"></i></span><input id="nome" name="nome"
							placeholder="Joe" class="form-control" required="required"
							value="<c:out value="${funcionario.nome}"/>" type="text">
					</div>
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-3 control-label"><fmt:message key="campo.sobrenome"/></label>
				<div class="col-md-9 inputGroupContainer">
					<div class="input-group">
						<span class="input-group-addon"><i
							class="glyphicon glyphicon-user"></i></span><input id="sobrenome"
							name="sobrenome" placeholder="Doe" class="form-control"
							required="required" value="<c:out value="${funcionario.sobrenome}"/>"
							type="text">
					</div>
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-3 control-label"><fmt:message key="campo.dataNascimento"/></label>
				<div class="col-md-9 inputGroupContainer">
					<div class="input-group">
						<span class="input-group-addon"><i
							class="glyphicon glyphicon-calendar"></i></span><input
							id="dataNascimento" name="dataNascimento" placeholder="Data"
							class="form-control" required="required"
							value="<c:out value="${funcionario.dataNascimento}"/>" type="date">
					</div>
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-3 control-label"><fmt:message key="campo.telefone"/></label>
				<div class="col-md-9 inputGroupContainer">
					<div class="input-group">
						<span class="input-group-addon"><i
							class="glyphicon glyphicon-earphone"></i></span><input id="telefone"
							name="telefone" placeholder="49 9 9999-9999"
							class="form-control" required="required"
							value="<c:out value="${funcionario.telefone}"/>" type="text">
					</div>
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-3 control-label"><fmt:message key="campo.cpf"/></label>
				<div class="col-md-9 inputGroupContainer">
					<div class="input-group">
						<span class="input-group-addon"><i
							class="glyphicon glyphicon-user"></i></span><input id="cpf" name="cpf"
							placeholder="112.234.567-89" class="form-control"
							required="required" value="<c:out value="${funcionario.cpf}"/>"
							type="text" disabled>
					</div>
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-3 control-label"><fmt:message key="campo.email"/></label>
				<div class="col-md-9 inputGroupContainer">
					<div class="input-group">
						<span class="input-group-addon"><i
							class="glyphicon glyphicon-envelope"></i></span><input id="email"
							name="email" placeholder="joe@doe.com" class="form-control"
							required="required" value="<c:out value="${funcionario.email}"/>"
							type="email">
					</div>
				</div>
			</div>
				<div class="form-group">
				<label class="col-md-3 control-label"><fmt:message key="campo.dataAdmissao"/></label>
				<div class="col-md-9 inputGroupContainer">
					<div class="input-group">
						<span class="input-group-addon"><i
							class="glyphicon glyphicon-calendar"></i></span><input id="dataAdmissao" name="dataAdmissao"
							placeholder="Data" class="form-control" required="required"
							value="<c:out value="${funcionario.dataAdmissao}"/>" type="date">
					</div>
				</div>
			</div>
			<input type="submit"
				class="btn btn-primary col-md-1 col-md-offset-11" name="Editar" />
		</fieldset>
	</form>
</body>
</html>