<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><fmt:message key="tela.alugueis.ativos.titulo" /></title>
<link href="<c:url value="/resources/css/bootstrap.min.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/aluguelAssets/style.css" />"
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
			<fmt:message key="tela.aluguel.cadastro" />
		</h1>
	</div>
	<form class="well form-horizontal"
		action='<c:url value="/aluguel/enviar"></c:url>' method="post">
		<fieldset>
			<div class="form-group">
				<label class="col-md-3 control-label"><fmt:message
						key="aluguel.data" /></label>
				<div class="col-md-9 inputGroupContainer">
					<div class="input-group">
						<span class="input-group-addon"><i
							class="glyphicon glyphicon-calendar"></i></span><input id="dataAluguel"
							name="dataAluguel" placeholder="Data" class="form-control"
							required="required" value="" type="date">
					</div>
				</div>
			</div>

			<div class="form-group">
				<label class="col-md-3 control-label"><fmt:message
						key="aluguel.carro" /></label>
				<div class="col-md-9 inputGroupContainer">
					<div class="input-group">
						<span class="input-group-addon"><i class="fa fa-car"></i></span>
							<input
							id="placa" name="carro.codigo" class="form-control" required="required"
							value="<c:out value="${carro.placa}"/>" type="text" disabled>
					</div>
				</div>
			</div>

			<div class="form-group">
				<label class="col-md-3 control-label"><fmt:message
						key="aluguel.funcionario" /></label>
				<div class="col-md-9 inputGroupContainer">
					<div class="input-group">
						<span class="input-group-addon"><i
							class="glyphicon glyphicon-user"></i></span><input id="cpfFuncionario"
							name="cpfFuncionario" placeholder="123.123.123-12" class="form-control"
							required="required" value="" type="text">
					</div>
				</div>
			</div>

			<div class="form-group">
				<label class="col-md-3 control-label"><fmt:message key="aluguel.cliente" /></label>
				<div class="col-md-9 inputGroupContainer">
					<div class="input-group">
						<span class="input-group-addon">
							<i class="glyphicon glyphicon-user"></i>
						</span>
						<input id="cpfCliente" name="cpfCliente" placeholder="123.123.123-12" class="form-control"
						required="required" value="" type="text">
					</div>
				</div>
			</div>

			<div class="form-group">
				<label class="col-md-3 control-label">
					<fmt:message key="aluguel.taxa" />
				</label>
				<div class="col-md-9 inputGroupContainer">
					<div class="input-group">
						<span class="input-group-addon">
							<i class="glyphicon glyphicon-usd"></i>
						</span>
						<input id="taxa" name="taxa" class="form-control" required="required" value="10.00" type="text">
					</div>
				</div>
			</div>
			
			<div class="form-group">
				<label class="col-md-3 control-label">
					<fmt:message key="aluguel.valor" />
				</label>
				<div class="col-md-9 inputGroupContainer">
					<div class="input-group">
						<span class="input-group-addon">
							<i class="glyphicon glyphicon-usd"></i>
						</span>
						<input id="valor" name="valor" class="form-control" required="required" value="20.00" type="text">
					</div>
				</div>
			</div>

			<div class="form-group">
				<label class="col-md-3 control-label"><fmt:message
						key="aluguel.km" /></label>
				<div class="col-md-9 inputGroupContainer">
					<div class="input-group">
						<span class="input-group-addon"><i class="glyphicon glyphicon-dashboard"></i></span><input
							id="kmSaida" name="kmSaida" placeholder="10.000"
							class="form-control" required="required" value="" type="text">
					</div>
				</div>
			</div>


			<input type="submit"
				class="btn btn-primary col-md-1 col-md-offset-11" name="Alugar" />
		</fieldset>
	</form>
	
	<script src="<c:url value="/resources/js/jquery.min.js" />"></script>
	<script src="<c:url value="/resources/js/jquery.mask.js" />"></script>

	<script>
		jQuery(function($) {
			$("#cpfCliente").mask("999.999.999-99");
			$("#cpfFuncionario").mask("999.999.999-99");
			$("#placa").mask("AAA-9999");
			$('#taxa').mask('#.##0.00', {reverse: true});
			$('#valor').mask('#.##0.00', {reverse: true});
		});
	</script>
</body>
</html>