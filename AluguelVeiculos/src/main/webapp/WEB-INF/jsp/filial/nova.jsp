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
			<fmt:message key="filial"/>
		</h1>
		<form method="post" class="well form-horizontal">
			<fieldset>
					<div class="form-group">
						<label class="col-md-3 control-label">
							<fmt:message key="filial.nome" />
						</label>
						<div class="col-md-9 inputGroupContainer">
							<div class="col-md-3 input-group">
								<span class="input-group-addon">
									<i class="fa fa-building"></i>
								</span>
								<input name="nome" placeholder="" class="form-control" 
								required="required" value="<c:out value="${filial.nome}"/>" type="text"/>
							</div>
						</div>
					</div>
					<div class="form-group">
						<label class="col-md-3 control-label">
							<fmt:message key="filial.cpnj" /><a>
							<i class="ace-icon fa fa-question-circle blue info" data-toggle="tooltip" title="CNPJ da filial"></i></a>
						</label>
						<div class="col-md-9 inputGroupContainer">
							<div class="input-group col-md-3">
								<span class="input-group-addon">
									<i class="fa fa-building"></i>
								</span>
								<input name="cnpj" placeholder="" class="form-control" 
								required="required" value="<c:out value="${filial.cnpj}"/>" type="text"/>
							</div>
						</div>
					</div>
					<div class="form-group">
						<label class="col-md-3 control-label">
							<fmt:message key="filial.endereco" />
							<i class="ace-icon fa fa-question-circle blue info" data-toggle="tooltip" title="Endereço da filial"></i>
						</label>
						<div class="col-md-9 inputGroupContainer">
							<div class="input-group col-md-3">
								<span class="input-group-addon">
									<i class="glyphicon glyphicon-road"></i>
								</span>
								<input name="endereco" placeholder="" class="form-control" 
								value="<c:out value="${filial.endereco}"/>" type="text"/>
							</div>
						</div>
					</div>
				<button type="submit" class="btn btn-primary">Salvar</button>
			</fieldset>		
		</form>
	</div>
	
<script src="<c:url value="/resources/js/jquery.min.js"/>"></script>
<%-- <script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script> --%>

<script>
$(document).ready(function(){
  $('[data-toggle="tooltip"]').tooltip();   
});
</script>

</body>
</html>