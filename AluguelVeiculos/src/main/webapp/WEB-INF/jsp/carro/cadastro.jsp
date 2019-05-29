<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="frm"%>

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
<link href="https://fonts.googleapis.com/css?family=Delius"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
</head>
<body>
	<%@ include file="/WEB-INF/template/menu.jsp"%>
	<div class="container-fluid cont">
		<h1>
			<fmt:message key="tela.carro.cadastro" />
		</h1>
	</div>
	<frm:form modelAtributte="carro" class="well form-horizontal"
		action="enviar" method="post" enctype="multipart/form-data">
		<fieldset>
			<spring:hasBindErrors name="carro">
			<c:forEach var="error" items="${errors.allErrors}">
				<div class="alert alert-danger col-xs-12"><spring:message message="${error}"/></div>
			</c:forEach>
			</spring:hasBindErrors>
			<div class="form-group">
				<label class="col-md-3 control-label"><fmt:message
						key="carro.marca" /></label>
				<div class="col-md-9 inputGroupContainer">
					<div class="input-group">
						<span class="input-group-addon"><i class="fa fa-car"></i></span><input
							id="marca" name="marca" placeholder="Fiat, Chevrolet ..."
							class="form-control" required="required" value="<c:out value="${carro.marca}"/>" type="text">
						<frm:errors path="marca" />
					</div>
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-3 control-label"><fmt:message
						key="carro.modelo" /></label>
				<div class="col-md-9 inputGroupContainer">
					<div class="input-group">
						<span class="input-group-addon"><i class="fa fa-car"></i></span><input
							id="modelo" name="modelo" placeholder="Uno, Celta ..."
							class="form-control" required="required" value="<c:out value="${carro.modelo}"/>" type="text">
					</div>
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-3 control-label"><fmt:message
						key="carro.valor" /></label>
				<div class="col-md-9 inputGroupContainer">
					<div class="input-group">
						<span class="input-group-addon"><i
							class="glyphicon glyphicon-usd	
							"></i></span><input id="valor"
							name="valor" placeholder="valor do carro" class="form-control"
							required="required" value="<c:out value="${carro.valor}"/>" type="text">
					</div>
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-3 control-label"><fmt:message
						key="carro.cor" /></label>
				<div class="col-md-9 inputGroupContainer">
					<div class="input-group">
						<span class="input-group-addon"><i class="glyphicon glyphicon-tint
						"></i></span><input
							id="cor" name="cor" placeholder="preto, prata ..."
							class="form-control" required="required" value="<c:out value="${carro.cor}"/>" type="text">
					</div>
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-3 control-label"><fmt:message
						key="carro.ano" /></label>
				<div class="col-md-9 inputGroupContainer">
					<div class="input-group">
						<span class="input-group-addon"><i
							class="glyphicon glyphicon-calendar"></i></span><input id="ano"
							name="ano" placeholder="2000, 2010 ..." class="form-control"
							required="required" value="<c:out value="${carro.ano}"/>" type="text">
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
							class="form-control" required="required" value="<c:out value="${carro.placa}"/>" type="text">
					</div>
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-3 control-label"><fmt:message
						key="carro.disponivel" /></label>
				<div class="col-md-9 inputGroupContainer">
					<div class="input-group">..........................................................
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
				<label class="col-md-3 control-label"><fmt:message key="carro.imagem" /></label>
				<div class="col-md-9 inputGroupContainer">
					<div class="input-group">
						<div class="checkbox">
							<input type="file" name="file">
						</div>
					</div>
				</div>
			</div>
			
			<input type="submit" class="btn btn-primary col-md-1 col-md-offset-11" name="Enviar" />
		</fieldset>
	</frm:form>
	<script src="<c:url value="/resources/js/jquery.min.js" />"></script>
	<script src="<c:url value="/resources/js/jquery.mask.js" />"></script>
	

	<script>
		jQuery(function($) {
			$("#placa").mask("AAA-9999");
			$("#ano").mask("9999");
			$('#valor').mask('#.##0,00', {reverse: true});
		});
	</script>
</body>
</html>