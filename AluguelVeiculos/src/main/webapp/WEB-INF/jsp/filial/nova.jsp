<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
	<title><fmt:message key="configuracoes"/></title>
	<%@ include file="/WEB-INF/template/resources.jsp"%>
	<link href="<c:url value="/resources/clienteAssets/style.css" />" rel="stylesheet">
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
							<fmt:message key="filial.cpnj" />
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