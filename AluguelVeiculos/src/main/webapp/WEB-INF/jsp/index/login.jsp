<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
 <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">
 <link href="<c:url value="/resources/loginAssets/style.css" />" rel="stylesheet">
</head>
<body>
<div class="container-fluid">
	<h2 class="text-center">Digite seu login e senha</h2>
	<form method="post">
		<fieldset>
			<div class="form-group  col-md-12">
			  <label class="col-md-4 control-label text-right" for="e-mail">Usuário</label>  
			  <div class="col-md-4">
			  	<input id="e-mail" name="e-mail" type="text" placeholder="e-mail" class="form-control input-md" required="required"/>
			  </div>
			</div>
			<div class="form-group col-md-12 text-right">
			  <label class="col-md-4 control-label" for="senha">Senha</label>
			  <div class="col-md-4">
			    <input id="senha" name="senha" type="password" placeholder="senha" class="form-control input-md" required="required"/>
			  </div>
			</div>
	</fieldset>
		<div class="col-md-12  text-left">	
			<div class="col-md-2 col-md-offset-4">	
				<button class="btn btn-primary" type="submit">Entrar</button>
				<a href="dashboard/" class="btn btn-default active" role="button" aria-pressed="true">Cadastre-se!</a>
			</div>
		</div>	
	</form>
	
</div>	
</body>
</html>