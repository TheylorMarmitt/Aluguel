<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Recuperar Senha</title>
 <%@ include file="/WEB-INF/template/resources.jsp"%>
 <link href="<c:url value="/resources/loginAssets/style.css" />" rel="stylesheet">
</head>
<body>
<div class="container-fluid">
	<h2 class="text-center">Digite seu e-mail para recuperar senha</h2>
	<form action="recuperar" method="post">
		<fieldset>
			<div class="form-group  col-md-12">
			  <label class="col-md-4 control-label text-right" for="e-mail">E-mail</label>  
			  <div class="col-md-4">
			  	<input id="email" name="email" type="text" placeholder="E-mail do usuário" class="form-control input-md" required="required"/>
			  </div>
			</div>
			
		</fieldset>
		<div class="col-md-12">	
			<div class="col-md-3 col-md-offset-4">	
				<button class="btn btn-primary" type="submit"> Recuperar</button>
			</div>
		</div>	
	</form>
</div>	
</body>
</html>