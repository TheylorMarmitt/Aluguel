<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<link href="<c:url value="/resources/clienteAssets/style.css" />"
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
			<fmt:message key="tela.funcionario.cadastro" />
		</h1>
	</div>
	<frm:form modelAtributte="funcionario" class="well form-horizontal"
		action="enviar" method="post" enctype="multipart/form-data">

		<fieldset>
			<spring:hasBindErrors name="funcionario">
				<c:forEach var="error" items="${errors.allErrors}">
					<div class="alert alert-danger col-xs-12">
						<spring:message message="${error}" />
					</div>
				</c:forEach>
			</spring:hasBindErrors>

			<%@ include file="/WEB-INF/template/formGeral.jsp"%>

			<div class="form-group">
				<label class="col-md-3 control-label"><fmt:message
						key="campo.dataAdmissao" /></label>
				<div class="col-md-9 inputGroupContainer">
					<div class="input-group">
						<span class="input-group-addon"><i
							class="glyphicon glyphicon-calendar"></i></span><input id="dataAdmissao"
							name="dataAdmissao" placeholder="Data" class="form-control"
							value="" type="date">
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
							value="" type="password">
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
								<option value="${filial.codigo}">${filial.nome}</option>
							</c:forEach>
						</select>
					</div>	
				</div>
			</div>
			
			<input type="submit"
				class="btn btn-primary col-md-1 col-md-offset-11" name="Enviar" />
		</fieldset>
	</frm:form>
</body>
</html>