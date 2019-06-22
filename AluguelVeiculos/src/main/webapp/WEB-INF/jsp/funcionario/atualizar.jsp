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
<title><fmt:message key="tela.funcionario.titulo" /></title>
<link href="<c:url value="/resources/css/bootstrap.min.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/funcionarioAssets/style.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
<link href="<c:url value="/resources/menu/style.css" />"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Delius"
	rel="stylesheet">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" >
	<link rel="icon" href="<c:url value="/resources/img/favicon.ico" />">
</head>
<body>
	<%@ include file="/WEB-INF/template/menu.jsp"%>
	<div class="container-fluid cont">
		<h1>
			<fmt:message key="tela.funcionario.atualizar" />
		</h1>
		<form>
			<div class="form-group">
				<label class="pull-left control-label  cpf"><fmt:message
						key="cpf.busca" /></label>
				<div class="inputGroupContainer">
					<div class="input-group">
						<input type="text" name="cpf" id="filtro"> <input
							class="btn btn-default btn-filtro" type="submit" value="filtrar" />
					</div>
				</div>
			</div>
		</form>
	</div>
	<frm:form modelAtributte="funcionario" class="well form-horizontal"
		action=  "atualizar" method="post" enctype="multipart/form-data">
		<fieldset>
			<spring:hasBindErrors name="funcionario">
				<c:forEach var="error" items="${errors.allErrors}">
					<div class="alert alert-danger col-xs-12">
						<spring:message message="${error}" />
					</div>
				</c:forEach>
			</spring:hasBindErrors>
			<input type="hidden" name="codigo" value="${funcionario.codigo}" />
			<div class="form-group">
				<label class="col-md-3 control-label"><fmt:message
						key="campo.nome" /></label>
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
				<label class="col-md-3 control-label"><fmt:message
						key="campo.sobrenome" /></label>
				<div class="col-md-9 inputGroupContainer">
					<div class="input-group">
						<span class="input-group-addon"><i
							class="glyphicon glyphicon-user"></i></span><input id="sobrenome"
							name="sobrenome" placeholder="Doe" class="form-control"
							required="required"
							value="<c:out value="${funcionario.sobrenome}"/>" type="text">
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
							value="${funcionario.converteData()}" type="text">
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
							required="required"
							value="${funcionario.telefone}" type="text">
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
							required="required" value="<c:out value="${funcionario.cpf}"/>"
							type="text" />
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
							required="required" value="<c:out value="${funcionario.email}"/>"
							type="email">
					</div>
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-3 control-label"><fmt:message
						key="campo.dataAdmissao" /></label>
				<div class="col-md-9 inputGroupContainer">
					<div class="input-group">
						<span class="input-group-addon"><i
							class="glyphicon glyphicon-calendar"></i></span><input id="dataAdmissao"
							name="dataAdmissao" placeholder="Data" class="form-control"
							value="${funcionario.converteDataAdmissao()}" type="text" />
					</div>
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-3 control-label"><fmt:message
						key="campo.senha" /></label>
				<div class="col-md-9 inputGroupContainer">
					<div class="input-group">
						<span class="input-group-addon"><i class="fa fa-unlock-alt"></i></span><input id="senha"
							name="senha" placeholder="Senha" class="form-control"
							value="<c:out value="${funcionario.senha}"/>" type="password">
					</div>
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-3 control-label">
					<fmt:message key="filial"/>
				</label>
				<div class="col-md-9 inputGroupContainer">
					<div class="input-group">
					<span class="input-group-addon">
						<i class="fa fa-building"></i></span>
						<select class="form-control" name="filial.codigo">
							<c:forEach var="filial" items="${filiais}">
								<c:if test="${funcionario.filial.codigo} == ${filial.codigo}">
									<option value="${filial.codigo}" selected>${filial.nome}</option>
								</c:if>
									<option value="${filial.codigo}">${filial.nome}</option>
							</c:forEach>
						</select>
					</div>	
				</div>
			</div>
			<input type="submit"
				class="btn btn-primary col-md-1 col-md-offset-11" name="Editar" />
		</fieldset>
	</frm:form>
	
	<script src="<c:url value="/resources/js/jquery.min.js" />"></script>
	<script src="<c:url value="/resources/js/jquery.mask.js" />"></script>

	<script>
		jQuery(function($) {
			$("#filtro").mask("999.999.999-99");
			$("#cpf").mask("999.999.999-99");
			$("#telefone").mask("(99)99999-9999");
		});
	</script>
</body>
</html>