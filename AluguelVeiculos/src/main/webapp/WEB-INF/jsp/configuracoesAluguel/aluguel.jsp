<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
	<title><fmt:message key="configuracoes"/></title>
	<link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">
	<link href="<c:url value="/resources/clienteAssets/style.css" />" rel="stylesheet">
	<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
	<link href="<c:url value="/resources/menu/style.css" />" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Delius" rel="stylesheet">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" >
	<link rel="icon" href="<c:url value="/resources/img/favicon.ico" />">
</head>
<body>
	<%@ include file="/WEB-INF/template/menu.jsp"%>
	
	<div class="container-fluid cont">
		<h1>
			<fmt:message key="configuracoes"/>
		</h1>
		<form method="post" class="well form-horizontal">
			<fieldset>
					<div class="form-group">
						<label class="col-md-3 control-label">
							<fmt:message key="aluguel.valor" />
							<i class="ace-icon fa fa-question-circle blue info"></i>
						</label>
						<div class="col-md-9 inputGroupContainer">
							<div class="">
								
							</div>
							<div class="col-md-2 input-group">
								<span class="input-group-addon">
									<i class="fa fa-percent"></i>
								</span>
								<input name="percentValorKm" placeholder="50%" class="form-control" 
								required="required" value="<c:out value="${aluguel.percentValorKm}"/>" type="text"/>
							</div>
						</div>
					</div>
					<div class="form-group">
						<label class="col-md-3 control-label">
							<fmt:message key="aluguel.taxa" />
							<i class="ace-icon fa fa-question-circle blue info"></i>
						</label>
						<div class="col-md-9 inputGroupContainer">
							<div class="input-group col-md-2">
								<span class="input-group-addon">
									<i class="fa fa-percent"></i>
								</span>
								<input name="percentTaxaDiaria" placeholder="50%" class="form-control" 
								required="required" value="<c:out value="${aluguel.percentTaxaDiaria}"/>" type="text"/>
							</div>
						</div>
					</div>
					<div class="form-group">
				<label class="col-md-3 control-label"><fmt:message
						key="filial" /></label>
				<div class="col-md-9 inputGroupContainer">
					<div class="input-group">
						<span class="input-group-addon"><i class="fa fa-car"></i></span> <select
							class="browser-default custom-select" id=carro
							name="filial">
							<c:forEach var="f" items="${filial}">
								<option value="${f.codigo}">${f.nome}</option>
							</c:forEach>
						</select>
					</div>
				</div>
			</div>
				<button type="submit" class="btn btn-primary">Salvar</button>
			</fieldset>		
		</form>
	</div>

</body>
</html>