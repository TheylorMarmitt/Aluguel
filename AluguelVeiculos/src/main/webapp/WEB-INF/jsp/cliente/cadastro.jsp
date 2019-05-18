	<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><fmt:message key="tela.cliente.titulo"/></title>
 <link href="<c:url value="/resources/css/bootstrap.min.css" />"
	rel="stylesheet">
	<link href="<c:url value="/resources/clienteAssets/style.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
<link href="<c:url value="/resources/menu/style.css" />"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Delius"
	rel="stylesheet">
</head>
<body>
	<%@ include file="/WEB-INF/template/menu.jsp" %>
	<div class= "container-fluid cont">
		<h1><fmt:message key="tela.cliente.cadastro"/></h1>
	</div>
	<form class="well form-horizontal"
		action='<c:url value="/cliente/enviar"></c:url>' method="post">
		<fieldset>
		
			<!-- Aqui eu inclui a -->
		<%@ include file="/WEB-INF/template/formGeral.jsp" %>
			
			<div class="form-group">
				<label class="col-md-3 control-label"><fmt:message key="campo.cnh"/></label>
				<div class="col-md-9 inputGroupContainer">
					<div class="input-group">
						<span class="input-group-addon"><i
							class="glyphicon glyphicon-user"></i></span><input id="cnh" name="cnh"
							placeholder="62786985474" class="form-control" required="required"
							value="" type="text">
					</div>
				</div>
			</div>
			<input type="submit" class="btn btn-primary col-md-1 col-md-offset-11"
				name="Enviar" />
		</fieldset>
	</form>
</body>
</html>