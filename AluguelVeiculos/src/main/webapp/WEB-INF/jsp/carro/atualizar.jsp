
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
<title><fmt:message key="tela.carro.titulo" /></title>
<link href="<c:url value="/resources/css/bootstrap.min.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/carroAssets/style.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
<link href="<c:url value="/resources/menu/style.css" />"
	rel="stylesheet">
	<link href="<c:url value="/resources/carroAssets/style.css" />" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Delius"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
	<link rel="icon" href="<c:url value="/resources/img/favicon.ico" />">
</head>
<body>
	<%@ include file="/WEB-INF/template/menu.jsp"%>
	<div class="container-fluid cont">
		<h1>
			<fmt:message key="tela.carro.atualizar" />
		</h1>
		<form action='<c:url value="/carro/atualizar"></c:url>' method="get">
			<div class="form-group">
				<label class="pull-left control-label  cpf"><fmt:message
						key="tela.carro.busca" /></label>
				<div class="inputGroupContainer">
					<div class="input-group">
						<input type="text" id= "filtroPlaca" name="filtroPlaca"> <input
							class="btn btn-default btn-filtro" type="submit" value="filtrar" />
					</div>
				</div>
			</div>
		</form>
	</div>
	<frm:form modelAtributte="carro" class="well form-horizontal"
		action="editar" method="post" enctype="multipart/form-data">
		<fieldset>
			<spring:hasBindErrors name="carro">
				<c:forEach var="error" items="${errors.allErrors}">
					<div class="alert alert-danger col-xs-12">
						<spring:message message="${error}" />
					</div>
				</c:forEach>
			</spring:hasBindErrors>

			
			<div class="form-group" >
				<label class="col-md-3 control-label"><fmt:message
						key="carro" /></label>
				<div class="col-md-9 inputGroupContainer">
					<div class="input-group">
						<span class="input-group-addon"><i class="fa fa-car"></i></span>
						<button type="button" class="btn btn-default" data-toggle="modal" data-target="#myModal"><fmt:message
									key="carro.selecione" /></button>
						<div class="modal fade" id="myModal" role="dialog">
						    <div class="modal-dialog">
						    
						      <div class="modal-content">
						        <div class="modal-header">
						          <button type="button" class="close" data-dismiss="modal">&times;</button>
						          <h4 class="modal-title"><fmt:message
									key="carro.selecione" /></h4>
						        </div>
						        <div class="modal-body">
						        <label class="control-label"><fmt:message
									key="carro.marca" /></label>
						          <select class="form-control"  name="marcaSelect" id="marca"></select>
						        </div>
						        <div class="modal-body">
						        <label class="control-label"><fmt:message
									key="carro.modelo" /></label>
						          <select class="form-control" name="modeloSelect" id="modelo"> </select>
						        </div>
						        <div class="modal-body">
						        <label class="control-label"><fmt:message
									key="carro.ano" /></label>
						          <select class="form-control" name="anoSelect" id="ano"> </select>
						        </div>
						        
						        <br>
						        <div class="modal-footer">
						          <button type="button" id="fechar" class="btn btn-default" data-dismiss="modal">Fechar</button>
						        </div>
						      </div>
						      
						    </div>
						 </div>
<%-- 				<frm:errors path="marca" /> --%>
					</div>
				</div>
			</div>
			
			<input value="<c:out value="${carro.marca}"/>" id=marcaCarro type="hidden" name="marca" required/>
			<input value="<c:out value="${carro.modelo}"/>" id=modeloCarro type="hidden" name="modelo" required/>
			<input value="<c:out value="${carro.ano}"/>" id=anoCarro type="hidden" name="ano" required/>

			<div class="form-group">
				<label class="col-md-3 control-label"><fmt:message
						key="carro.valor" /></label>
				<div class="col-md-9 inputGroupContainer">
					<div class="input-group">
						<span class="input-group-addon"><i
							class="glyphicon glyphicon-usd	
							"></i></span><input id="valor"
							name="valor" placeholder="valor do carro" class="form-control"
							required="required" value="<c:out value="${carro.valor}"/>"
							type="text">
					</div>
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-3 control-label"><fmt:message
						key="carro.cor" /></label>
				<div class="col-md-9 inputGroupContainer">
					<div class="input-group">
						<span class="input-group-addon"><i
							class="glyphicon glyphicon-tint"></i></span><input id="cor" name="cor"
							placeholder="preto, prata ..." class="form-control"
							required="required" value="<c:out value="${carro.cor}"/>"
							type="text">
					</div>
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-3 control-label"><fmt:message
						key="carro.placa" /></label>
				<div class="col-md-9 inputGroupContainer">
					<div class="input-group">
						<span class="input-group-addon"><i class="fa fa-car"></i></span><input
							id="placa" name="placa" placeholder="AAA-1234"
							class="form-control" required="required"
							value="<c:out value="${carro.placa}"/>" type="text">
					</div>
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-3 control-label"><fmt:message
						key="carro.disponivel" /></label>
				<div class="col-md-9 inputGroupContainer">
					<div class="input-group">
						<div class="checkbox">
							<label> <input type="checkbox" name="disponivel">
							<c:if test="${carro.disponivel == true}">
								<input type="checkbox" name="disponivel" checked>
							</c:if>
								<fmt:message key="carro.disponivelAluguel" />
							</label>
						</div>
					</div>
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-3 control-label"><fmt:message
						key="carro.imagem" /></label>
				<div class="col-md-9 inputGroupContainer">
					<div class="input-group">
						<div class="checkbox">
							<input type="file" name="file">
						</div>
					</div>
				</div>
			</div>

			<input type="submit"
				class="btn btn-primary col-md-1 col-md-offset-11" name="Editar" />
		</fieldset>
	</frm:form>
	<script src="<c:url value="/resources/js/jquery.min.js" />"></script>
	<script src="<c:url value="/resources/js/jquery.mask.js" />"></script>
	<script src="<c:url value="/resources/carroAssets/script.js" />"></script>
	
	<script>
		jQuery(function($) {
			$("#filtroPlaca").mask("AAA-9999");
			$("#placa").mask("AAA-9999");
		});
	</script>
</body>
</html>